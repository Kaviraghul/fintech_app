import 'package:flutter/material.dart';

class UsStocksScreen extends StatefulWidget {
  const UsStocksScreen({super.key});

  @override
  State<UsStocksScreen> createState() => _UsStocksScreenState();
}

class _UsStocksScreenState extends State<UsStocksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("us stocks screen"),
      ),
    );
  }
}
