import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Menu',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
          ),
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/profileImage.jpg'),
          radius: 28,
        )
      ],
    );
  }
}
