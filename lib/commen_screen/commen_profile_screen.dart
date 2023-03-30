import 'package:flutter/material.dart';

class CommenProfileScreen extends StatelessWidget {
  final String? text;
  final String? texttwo;
  const CommenProfileScreen({
    Key? key,
    this.text,
    this.texttwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
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
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    texttwo!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF909090),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
