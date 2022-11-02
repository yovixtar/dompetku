import 'package:flutter/material.dart';

class MintaPage extends StatefulWidget {
  const MintaPage({super.key});

  @override
  State<MintaPage> createState() => _MintaPageState();
}

class _MintaPageState extends State<MintaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minta Page"),
      ),
    );
  }
}
