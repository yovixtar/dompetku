import 'package:dompetku_app/util/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dompetku"),
        backgroundColor: COLOR_PRIMARY,
      ),
      body: Container(
        child: Column(children: [
          Text(
            "Ini Home",
            style: TextStyle(
              color: COLOR_TEXT,
            ),
          ),
          Text("Ini Home"),
        ]),
      ),
    );
  }
}
