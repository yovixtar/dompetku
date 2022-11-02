import 'package:flutter/material.dart';

class BayarPage extends StatefulWidget {
  const BayarPage({super.key});

  @override
  State<BayarPage> createState() => _BayarPageState();
}

class _BayarPageState extends State<BayarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bayar Page"),
      ),
    );
  }
}
