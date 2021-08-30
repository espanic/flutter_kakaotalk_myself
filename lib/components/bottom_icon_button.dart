import 'package:flutter/material.dart';

class BottomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String text;

  const BottomIconButton(
      {required this.icon, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
          color: Colors.white,
          iconSize: 25,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
