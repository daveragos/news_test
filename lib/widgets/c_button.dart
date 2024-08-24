import 'package:flutter/material.dart';

class KElevatedButton extends StatelessWidget {
  KElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.bg,
    required this.borderColor,
    required this.fg,
  });
  final String text;
  final VoidCallback? onPressed;
  final Color bg;
  final Color fg;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: /* onPressed ?? */ () {},
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: borderColor /*Color(0xFF475AD7)*/))),
          foregroundColor: WidgetStateProperty.all(fg),
          backgroundColor: WidgetStateProperty.all(bg
              // Color(0xFF475AD7),
              ),
        ),
        child: Text(text));
  }
}
