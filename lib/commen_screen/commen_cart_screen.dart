import 'package:flutter/material.dart';

class CommenCartScreen extends StatelessWidget {
  final String? image;
  final String? text;
  final String? texttwo;
  const CommenCartScreen({
    Key? key,
    this.image,
    this.text,
    this.texttwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
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
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF909090),
                  ),
                ),
                Text(
                  texttwo!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF242424),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFE0E0E0),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    const Text(
                      "01",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter",
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFE0E0E0),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cancel_outlined,
              color: Color(0xFF242424),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
