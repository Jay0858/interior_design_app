import 'package:flutter/material.dart';

class CommenShippingScreen extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final bool? switchValue;
  final Function(bool?)? onChange;

  const CommenShippingScreen({
    Key? key,
    this.title,
    this.subtitle,
    this.switchValue = false,
    this.onChange,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: Colors.black,
              value: switchValue,
              checkColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              onChanged: onChange,
            ),
            Text(
              "Use as the shipping address",
              style: TextStyle(
                fontSize: 18,
                color: switchValue! ? Colors.black : Color(0xFF909090),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(1, 1),
                  blurRadius: 3,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFE0E0E0),
                  ),
                  Text(
                    subtitle!,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF909090),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
