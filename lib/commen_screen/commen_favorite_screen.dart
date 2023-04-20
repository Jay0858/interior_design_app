import 'package:flutter/material.dart';

class CommenFavoriteScreen extends StatelessWidget {
  final String? image;
  final String? text;
  final String? texttwo;
  const CommenFavoriteScreen({
    Key? key,
    this.image,
    this.text,
    this.texttwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            height: 100,
            image!,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text!,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF909090),
                  ),
                ),
                Text(
                  texttwo!,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF242424),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              Icon(
                Icons.cancel_outlined,
                color: Color(0xFF242424),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                  color: Color(
                    0xFFE0E0E0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset(
                  height: 20,
                  "assets/images/favbag.png",
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
