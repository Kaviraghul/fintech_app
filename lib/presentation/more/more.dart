import 'package:flutter/material.dart';

class MoreSectionScreen extends StatefulWidget {
  const MoreSectionScreen({super.key});

  @override
  State<MoreSectionScreen> createState() => _MoreSectionScreenState();
}

class _MoreSectionScreenState extends State<MoreSectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("more section screen"),
      ),
    );
  }
}
