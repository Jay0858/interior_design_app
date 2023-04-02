import 'package:flutter/material.dart';
import 'package:interior_app/commen_screen/commen_my_review_screen.dart';

class MyReviewScreen extends StatefulWidget {
  const MyReviewScreen({Key? key}) : super(key: key);

  @override
  State<MyReviewScreen> createState() => _MyReviewScreenState();
}

class _MyReviewScreenState extends State<MyReviewScreen> {
  List myreview = [
    {
      "image": "assets/images/reone.png",
    },
    {
      "image": "assets/images/retwo.png",
    },
    {
      "image": "assets/images/rethree.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 90),
                    const Text(
                      "My reviews",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 630,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: myreview.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 20),
                    itemBuilder: (context, index) => CommenMyReviewScreen(
                      image: myreview[index]['image'],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
