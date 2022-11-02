import 'package:dompetku_app/pages/bayar_page.dart';
import 'package:dompetku_app/pages/kirim_page.dart';
import 'package:dompetku_app/pages/minta_page.dart';
import 'package:dompetku_app/pages/topup_page.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';
import '../widgets/menu_box.dart';
import '../widgets/transaction_detail.dart';
import '../widgets/transaction_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      // child: CircleAvatar(
                      //   radius: 20,
                      //   backgroundImage: NetworkImage(
                      //       'https://i.pinimg.com/originals/0e/c8/c9/0ec8c9c0cd4192093fa2cf9cb2889924.jpg'),
                      // ),
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
                  "Saldo Dompetku",
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
                  icon: Icons.add_circle,
                  text: "Top Up",
                  tampilan: TopupPage(),
                ),
                MenuWidget(
                  icon: Icons.upload,
                  text: "Kirim",
                  tampilan: KirimPage(),
                ),
                MenuWidget(
                  icon: Icons.download,
                  text: "Terima",
                  tampilan: MintaPage(),
                ),
                MenuWidget(
                  icon: Icons.payment,
                  text: "Bayar",
                  tampilan: BayarPage(),
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
    );
  }
}
