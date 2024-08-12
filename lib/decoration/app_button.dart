import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  String buttontext;
// double? borderradius;
  Color? color;
  VoidCallback onPressed;
  Color txtcolor;

  AppButton(
      {super.key,
      required this.onPressed,
      required this.buttontext,
      this.color,
      required this.txtcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: 0,
        minimumSize: Size(200, 50),
      ),
      child: Text(buttontext,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: txtcolor)),
    );
  }
}
