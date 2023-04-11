import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Main Menu'),
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
                child: Text('Data Diri Kelompok'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu1');
                },
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                child: Text('Stopwatch App'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu2');
                },
              ),
            ),
            // SizedBox(
            //   height: 60,
            //   width: 200,
            //   child: ElevatedButton(
            //     child: Text('Kalendar'),
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/menu3');
            //     },
            //   ),
            // ),
            // SizedBox(
            //   height: 60,
            //   width: 200,
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       primary: Colors.blueGrey,
            //       onPrimary: Colors.white,
            //     ),
            //     child: Text('Logout'),
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/menu4');
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}