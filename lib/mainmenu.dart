import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Main Menu'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: const Text('Data Diri Kelompok'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu1');
                },
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: const Text('Stopwatch App'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu2');
                },
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: const Text('Movie Recommendation'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu3');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}