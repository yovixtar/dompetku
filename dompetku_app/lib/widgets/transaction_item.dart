import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  const TransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                // color: Color.fromARGB(255, 203, 231, 255),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(255, 63, 43, 150), width: 3)),
            child: SizedBox(
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  transaction.to
                      .split(" ")
                      .map((e) => e.substring(0, 1))
                      .toList()
                      .join(),
                  style: const TextStyle(
                    color: Color(0xFF3D538F),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Image.network(
              //   this.image,
              // ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    transaction.to,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF3D538F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  transaction.date,
                  style:
                      const TextStyle(color: Color(0xFF3D538F), fontSize: 14),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "- Rp. ${transaction.amount}",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFFFA6D6D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                transaction.description,
                style: const TextStyle(color: Color(0xFF3D538F), fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}