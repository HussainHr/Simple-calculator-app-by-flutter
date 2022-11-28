import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color colors;
  final VoidCallback onPress;
  const MyButton(
      {super.key,
      required this.title,
      this.colors = const Color(0xff0E1A40),
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: colors,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
