import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.text, this.telegram = false});

  final String text;
  final bool telegram;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: telegram
          ? const Icon(
              Icons.telegram_outlined,
              size: 25,
              color: Colors.blue,
            )
          : const Image(
              image: NetworkImage(
                'https://th.bing.com/th/id/OIP.TwESrblIhpd2D8XG5VDz5QHaHa?pid=ImgDet&rs=1',
              ),
              width: 22,
              height: 22,
              fit: BoxFit.cover,
            ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 16.5,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
