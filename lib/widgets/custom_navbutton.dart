import 'package:flutter/material.dart';

import '../values/size_font.dart';

class CustomNavButton extends StatelessWidget {
  final Color? textColor;
  final String? text;
  final void Function()? onPressed;

  const CustomNavButton({
    super.key,
    this.textColor = Colors.white,
    this.text = "",
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(
            color: textColor,
            fontSize: Font.navbar,
          ),
        ),
      ),
    );
  }
}
