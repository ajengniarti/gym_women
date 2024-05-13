import 'package:app_gym/screens/menu/home_menu.dart';
import 'package:app_gym/screens/menu/news_screen.dart';
import 'package:app_gym/screens/menu/profile_screen.dart';
import 'package:app_gym/screens/menu/scan_screen.dart';
import 'package:flutter/material.dart';

class ButtomNavigasiHome extends StatefulWidget {
  const ButtomNavigasiHome({super.key});

  @override
  State<ButtomNavigasiHome> createState() => _ButtomNavigasiHomeState();
}

class _ButtomNavigasiHomeState extends State<ButtomNavigasiHome> {
  int index = 0;
  final screen = [
    HomeScreen(),
    const NewsScreen(),
    const ScanScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: screen[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Colors.blue.shade100,
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )),
          child: NavigationBar(
            height: 60,
            backgroundColor: const Color(0xffFFD4D7),
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.newspaper),
                label: 'News',
              ),
              NavigationDestination(
                icon: Icon(Icons.qr_code),
                label: 'Scan',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
}
