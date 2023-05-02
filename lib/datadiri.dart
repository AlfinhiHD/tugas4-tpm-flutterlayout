import 'package:flutter/material.dart';

class MenuDataDiri extends StatelessWidget {
  const MenuDataDiri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Data Diri'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
      ),
    );
  }
}