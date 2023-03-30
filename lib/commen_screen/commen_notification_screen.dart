import 'package:flutter/material.dart';

class CommenNotificationScreen extends StatelessWidget {
  final String? image;
  final String? text;
  final String? texttwo;
  final bool? isColor;

  const CommenNotificationScreen({
    Key? key,
    this.image,
    this.text,
    this.texttwo,
    this.isColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Image.asset(height: 70, image!),
          const SizedBox(width: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    texttwo!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF909090),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              isColor!
                  ? const Text(
                      "New",
                      style: TextStyle(
                        color: Color(0xFF27AE60),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    )
                  : const Text(
                      "Hot",
                      style: TextStyle(
                        color: Color(0xFFEB5757),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    )
            ],
          ),
        ],
      ),
    );
  }
}
