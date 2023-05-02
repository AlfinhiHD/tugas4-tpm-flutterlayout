import 'package:flutter/material.dart';
import 'package:tugas4_flutterlayout/bantuan.dart';
import 'package:tugas4_flutterlayout/login_screen.dart';
import 'package:tugas4_flutterlayout/mainmenu.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _bottomNavCurrentIndex = 0;
  final List<Widget> _container =  [const HomePage(), const BantuanPage(), const LoginScreen()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          }
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.assignment,
            ),
            icon: Icon(
              Icons.assignment,
              color: Colors.grey,
            ),
            label: "Bantuan",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.exit_to_app,
            ),
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.grey,
            ),
            label: "Keluar",
          )
        ],
      ),
    );
  }
}