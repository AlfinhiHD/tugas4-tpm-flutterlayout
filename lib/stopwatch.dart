import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchApp extends StatefulWidget {
  @override
  _StopwatchWidgetState createState() => _StopwatchWidgetState();
}

class _StopwatchWidgetState extends State<StopwatchApp> {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;
  Duration _duration = Duration(milliseconds: 0);

  void _startTimer() {
    setState(() {
      _stopwatch.start();
      _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
        setState(() {
          _duration = _stopwatch.elapsed;
        });
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
      _duration = Duration(milliseconds: 0);
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String threeDigits(int n) => n.toString().padLeft(3, "0");

    String twoDigitHours = twoDigits(duration.inHours);
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
        title: Text('Stopwatch'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _formatDuration(_duration),
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _stopwatch.isRunning ? _stopTimer : _startTimer,
                child: Text(
                  _stopwatch.isRunning ? "Stop" : "Start",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: _stopwatch.isRunning ? null : _resetTimer,
                child: Text(
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