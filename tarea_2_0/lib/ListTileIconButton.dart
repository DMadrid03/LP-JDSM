// ignore: file_names
import 'package:flutter/material.dart';

class ListTileIconButton extends StatelessWidget {
  const ListTileIconButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 28,
      color: const Color.fromARGB(255, 41, 37, 37),
    );
  }
}
