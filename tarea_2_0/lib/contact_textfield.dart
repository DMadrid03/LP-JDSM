import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  final IconData? icon;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController? cont;

  const ContactTextField(
      {super.key,
      this.icon,
      required this.hintText,
      required this.keyboardType,
      this.cont});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              size: 25,
            ),
            //disabledBorder: InputBorder.none,
            hintText: hintText,
          ),
          keyboardType: keyboardType,
          style: const TextStyle(fontSize: 16),
          controller: cont,
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
