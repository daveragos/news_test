import 'package:flutter/material.dart';

class BorderedIcon extends StatelessWidget {
  const BorderedIcon({
    super.key,
    this.onPressed,
    required this.icon,
  });
  final VoidCallback? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      color: Colors.black,
      style: IconButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      onPressed: () {},
      icon: Icon(icon),
    );
  }
}
