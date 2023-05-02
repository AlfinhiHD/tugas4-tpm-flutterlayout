import 'package:flutter/material.dart';
import 'package:tugas4_flutterlayout/datadiri.dart';
import 'package:tugas4_flutterlayout/login_screen.dart';
import 'package:tugas4_flutterlayout/rekomendasi.dart';
import 'package:tugas4_flutterlayout/stopwatch.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TPM - Tugas 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        '/menu1': (context) => const MenuDataDiri(),
        '/menu2': (context) => const StopwatchApp(),
        '/menu3': (context) => const MovieListPage(),
      },
    );
  }
}

