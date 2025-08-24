import 'package:flutter/material.dart';

class MyTextW extends StatelessWidget {
  const MyTextW({super.key, required this.q, required this.ans});

  final String q;
  final String ans;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Text(
        "$q: $ans",
        style: TextStyle(color: Colors.tealAccent, fontSize: 20),
      ),
    );
  }
}
