import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';

class KTextField extends StatelessWidget {
  const KTextField(
      {super.key,
      required this.textController,
      required this.icon,
      required this.obscure,
      required this.hint});

  final TextEditingController textController;
  //FIXME: add "THE" icon
  final IconData icon;
  final bool obscure;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      obscureText: obscure,
      decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          filled: true,
          fillColor: Color(0xFFF9FCFE),
          hintText: hint,
          hintStyle: TextStyle(color: Konstants().kGrey),
          prefixIcon: Icon(
            icon,
            color: Konstants().kGrey,
          ),
          suffixIcon: obscure
              ? IconButton(
                  //FIXME: add onPressed
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Konstants().kGrey,
                  ))
              : SizedBox(),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
