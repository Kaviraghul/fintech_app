import 'package:flutter/material.dart';

class IndMoneyStoriesSection extends StatefulWidget {
  const IndMoneyStoriesSection({super.key});

  @override
  State<IndMoneyStoriesSection> createState() => _IndMoneyStoriesSectionState();
}

class _IndMoneyStoriesSectionState extends State<IndMoneyStoriesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("INDStories"),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160,
                color: Colors.red,
              ),
              Container(
                width: 160,
                color: Colors.blue,
              ),
              Container(
                width: 160,
                color: Colors.green,
              ),
              Container(
                width: 160,
                color: Colors.yellow,
              ),
              Container(
                width: 160,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
