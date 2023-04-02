import 'package:flutter/material.dart';

class CommenPaymentScreen extends StatelessWidget {
  final bool? onValue;
  final String? image;
  final Function(bool?)? onChange;
  const CommenPaymentScreen({
    Key? key,
    this.onValue = false,
    this.image,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(height: 175, image!),
        Row(
          children: [
            Checkbox(
              activeColor: Colors.black,
              value: onValue,
              checkColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              onChanged: onChange,
            ),
            Text(
              "Use as the shipping address",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: onValue! ? Colors.black : Color(0xFF909090),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
