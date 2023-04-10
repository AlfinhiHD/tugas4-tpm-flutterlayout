import 'package:flutter/material.dart';

class MenuDataDiri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Data Diri'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Kelompok - 7',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images.jpg"),
              ),
              SizedBox(height: 16),
              Text(
                'Muhammad Nur Hanif',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '123200123',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'IF-D',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Hobi saat ini : Mengerjakan Kuis TPM',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 50),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images.jpg"),
              ),
              SizedBox(height: 16),
              Text(
                'Alfinhi Hajid Dhia',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '123200142',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'IF-D',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Hobi saat ini : Mengerjakan Kuis TPM',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}