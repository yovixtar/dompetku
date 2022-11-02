import 'package:dompetku_app/util/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/transaction_item.dart';
import 'models/transaction.dart';
import 'widgets/menu_box.dart';
import 'widgets/transaction_detail.dart';
import 'pages/akun_page.dart';
import 'pages/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    DetailTransactionScreen(),
    AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.feed,
              ),
              label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              label: 'Akun'),
        ],
        selectedItemColor: const Color(0xFF3D538F),
        unselectedItemColor: const Color(0xFF3D538F),
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
