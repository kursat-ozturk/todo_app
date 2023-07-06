import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(15),
      onPressed: onPressed,
      color: const Color(0xff0D0D16),
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 143, 243, 215),
        ),
      ),
    );
  }
}
