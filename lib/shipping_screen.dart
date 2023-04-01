import 'package:flutter/material.dart';
import 'package:interior_app/commen_screen/commen_shipping_screen.dart';
import 'package:interior_app/routes/routes_name.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({Key? key}) : super(key: key);

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  List shippingList = [
    {
      "title": "Bruno Fernandes",
      "subtitle": "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
      "isColor": true,
    },
    {
      "title": "Bruno Fernandes",
      "subtitle": "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
      "isColor": false,
    },
    {
      "title": "Bruno Fernandes",
      "subtitle": "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
      "isColor": false,
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
                  onPressed: () {
                    Navigator.pop(context, RoutesName.fiftyscreen);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 70),
                const Text(
                  "Shipping address",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: shippingList.length,
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemBuilder: (context, index) => CommenShippingScreen(
                  title: shippingList[index]['title'],
                  subtitle: shippingList[index]['subtitle'],
                  switchValue: shippingList[index]['isColor'],
                  onChange: (value) {
                    debugPrint("Value --->> $value");
                    for (int i = 0; i < shippingList.length; i++) {
                      if (i == index) {
                        shippingList[i]['isColor'] = true;
                      } else {
                        shippingList[i]['isColor'] = false;
                      }
                    }

                    setState(() {});
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 5,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
