import 'package:dompetku_app/util/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/transaction_item.dart';
import 'models/transaction.dart';
import 'widgets/menu_box.dart';
import 'widgets/transaction_detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 63, 43, 150),
              Color.fromARGB(255, 168, 192, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.blueGrey,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/originals/0e/c8/c9/0ec8c9c0cd4192093fa2cf9cb2889924.jpg'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hallo,",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Khazim Fikri",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Stack(
                        children: const [
                          Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Positioned(
                            top: 0.0,
                            right: 0.0,
                            child: Icon(
                              Icons.brightness_1,
                              size: 8.0,
                              color: Colors.redAccent,
                            ),
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Text(
                    "Saldo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Rp. 2.000.000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  MenuWidget(
                    icon: Icons.send_rounded,
                    text: "Kirim",
                  ),
                  MenuWidget(
                    icon: Icons.account_balance_wallet,
                    text: "Terima",
                  ),
                  MenuWidget(
                    icon: Icons.payment,
                    text: "Bayar",
                  ),
                  MenuWidget(
                    icon: Icons.more_horiz,
                    text: "Lainnya",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 25,
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Transaksi Terakhir",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3D538F),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (BuildContext ctx) {
                                  return const DetailTransactionScreen();
                                },
                              );
                            },
                            child: const Text(
                              'Lihat Semua',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF3D538F),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.only(top: 0),
                        itemCount:
                            transactions.length < 5 ? transactions.length : 5,
                        itemBuilder: (context, index) {
                          return TransactionItem(
                            transaction: transactions[index],
                          );
                        },
                        // itemCount: transactions.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_rounded,
              ),
              label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
              ),
              label: 'Kartu'),
        ],
        selectedItemColor: const Color(0xFF3D538F),
        unselectedItemColor: const Color(0xFF3D538F),
      ),
    );
  }
}
