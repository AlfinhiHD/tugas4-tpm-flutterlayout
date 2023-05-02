import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchApp extends StatefulWidget {
  const StopwatchApp({Key? key}) : super(key: key);

  @override
  _StopwatchWidgetState createState() => _StopwatchWidgetState();
}

class _StopwatchWidgetState extends State<StopwatchApp> {
  final Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;
  Duration _duration = const Duration(milliseconds: 0);

  void _startTimer() {
    setState(() {
      _stopwatch.start();
      _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
        setState(() {
          _duration = _stopwatch.elapsed;
        });
        if (_duration >= const Duration(seconds: 60)) {
          _stopTimer();
        }
      });
    });
  }

  void _stopTimer() {
    setState(() {
      _stopwatch.stop();
      _timer?.cancel();
      _duration = _stopwatch.elapsed;
    });
  }

  void _resetTimer() {
    setState(() {
      _stopwatch.reset();
      _duration = const Duration(milliseconds: 0);
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String threeDigits(int n) => n.toString().padLeft(3, "0");

    String twoDigitHours = twoDigits(duration.inHours.remainder(24));
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    String threeDigitMilliseconds = threeDigits(duration.inMilliseconds.remainder(1000));

    return "$twoDigitHours:$twoDigitMinutes:$twoDigitSeconds.$threeDigitMilliseconds";
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _formatDuration(_duration),
            style: const TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _stopwatch.isRunning ? _stopTimer : _startTimer,
                child: Text(
                  _stopwatch.isRunning ? "Stop" : "Start",
                  style: const TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: _stopwatch.isRunning ? null : _resetTimer,
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}