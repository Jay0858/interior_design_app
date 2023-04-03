import 'package:flutter/material.dart';
import 'package:interior_app/commen_screen/commen_add_Shipping_screen.dart';
import 'package:interior_app/commen_screen/commen_add_shipping_screen_two.dart';

class AddShippingScreen extends StatefulWidget {
  const AddShippingScreen({Key? key}) : super(key: key);

  @override
  State<AddShippingScreen> createState() => _AddShippingScreenState();
}

class _AddShippingScreenState extends State<AddShippingScreen> {
  List addshippingList = [
    {
      'title': "Full name",
      "subtitle": "Arlene McCoy",
    },
    {
      'title': "Address",
      "subtitle": "25 Robert Latouche Street",
    },
    {
      'title': "Zipcode (Postal Code)",
      "subtitle": "324545",
    },
  ];
  List dropList = [
    {
      'title': "Country",
      "subtitle": "USA",
    },
    {
      'title': "City",
      "subtitle": "New York",
    },
    {
      'title': "District",
      "subtitle": "Select District",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                const SizedBox(width: 45),
                const Text(
                  "Add shipping address",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: addshippingList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) => CommenAddShippingScreen(
                title: addshippingList[index]['title'],
                subtitle: addshippingList[index]['subtitle'],
              ),
            ),
            const SizedBox(height: 20),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dropList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) => CommenAddShippingScreenTwo(
                title: dropList[index]['title'],
                subtitle: dropList[index]['subtitle'],
              ),
            ),
            const SizedBox(height: 90),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.black,
                ),
              ),
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 85),
                child: const Text(
                  "Save address",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
