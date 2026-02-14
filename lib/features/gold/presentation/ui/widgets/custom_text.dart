import 'package:flutter/material.dart';
import 'package:gold_silver_task/core/constants/app_text.dart';

class CustomText extends StatelessWidget {
  final String text;

  final Color color;

  const CustomText( {super.key,required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
