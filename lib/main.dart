import 'package:flutter/material.dart';
import 'package:tugas4_flutterlayout/datadiri.dart';
import 'package:tugas4_flutterlayout/login_screen.dart';
import 'package:tugas4_flutterlayout/stopwatch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TPM - Tugas 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/menu1': (context) => MenuDataDiri(),
        '/menu2': (context) => StopwatchApp(),
        // '/menu3': (context) => MenuFilm(),
        // '/menu4': (context) => FavoriteFilm(),
      },
    );
  }
}

