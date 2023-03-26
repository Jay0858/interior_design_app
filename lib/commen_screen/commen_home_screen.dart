import 'package:flutter/material.dart';

class CommonHomeScreen extends StatelessWidget {
  final String? image;
  final String? text;
  final bool? isColor;
  const CommonHomeScreen({
    Key? key,
    this.image,
    this.text,
    this.isColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isColor! ? const Color(0xE6090909) : const Color(0xFFF5F5F5),
          ),
          child: Image.asset(
            image!,
            color: isColor! ? const Color(0xFFF5F5F5) : const Color(0xFF909090),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text!,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: isColor! ? const Color(0xE6090909) : const Color(0xFF909090),
          ),
        )
      ],
    );
  }
}
