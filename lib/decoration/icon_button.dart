import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppIconButton extends StatelessWidget {
  Icon icon;
  VoidCallback onPressed;
  Color color;

  AppIconButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: color,
      iconSize: 30,
    );
  }
}
