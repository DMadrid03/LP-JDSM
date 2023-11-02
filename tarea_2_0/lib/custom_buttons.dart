import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.icon,
      required this.text,
      this.color = const Color.fromARGB(255, 29, 69, 145)});
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 28,
              color: color,
            )),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 29, 69, 145),
          ),
        )
      ],
    );
  }
}
