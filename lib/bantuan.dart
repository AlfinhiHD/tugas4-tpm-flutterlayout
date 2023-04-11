import 'package:flutter/material.dart';

class BantuanPage extends StatelessWidget {
  const BantuanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Bantuan',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Text('Selamat datang di app buat tugas TPM,'
                    ' Aplikasi ini dibuat sebagai tugas TPM.'
                    ' Mungkin kalau tidak ada tugas TPM kami tidak membuat aplikasi ini',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text('Aplikasi ini memiliki fitur data diri kelompok, stopwatch, situs rekomendasi, serta favorit.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Selamat hari raya idul fitri!   -Hamba Allah',
                  textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}