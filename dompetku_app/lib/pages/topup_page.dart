import 'package:flutter/material.dart';

class TopupPage extends StatefulWidget {
  const TopupPage({super.key});

  @override
  State<TopupPage> createState() => _TopupPageState();
}

class _TopupPageState extends State<TopupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Topup Page"),
      ),
    );
  }
}
