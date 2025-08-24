import 'package:flutter/material.dart';

class TextFF extends StatelessWidget {
  const TextFF({
    super.key,
    required this.obscureText,
    required this.what,
    this.textInputType,
  });

  final bool obscureText;
  final String what;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        cursorColor: Colors.tealAccent,
        style: TextStyle(color: Colors.white),
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.tealAccent, width: 3),
          ),
          hintText: "Enter your $what",
          hintStyle: TextStyle(color: Colors.tealAccent),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.tealAccent, width: 3),
          ),
        ),
      ),
    );
  }
}
