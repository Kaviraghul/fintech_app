import 'package:flutter/material.dart';

class IndStocksScreen extends StatefulWidget {
  const IndStocksScreen({super.key});

  @override
  State<IndStocksScreen> createState() => _IndStocksScreenState();
}

class _IndStocksScreenState extends State<IndStocksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("ind stock screen"),
      ),
    );
  }
}
