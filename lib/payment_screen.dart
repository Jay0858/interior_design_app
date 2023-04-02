import 'package:flutter/material.dart';
import 'package:interior_app/commen_screen/commen_payment_screen.dart';
import 'package:interior_app/routes/routes_name.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List paymentList = [
    {
      "image": "assets/images/paymentcard.png",
      "isColor": true,
    },
    {
      "image": "assets/images/paymentcardtwo.png",
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
                    Navigator.pop(context, RoutesName.sixtyscreen);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 70),
                const Text(
                  "Payment method",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.separated(
                itemCount: paymentList.length,
                separatorBuilder: (context, index) => const SizedBox(height: 20),
                itemBuilder: (context, index) => CommenPaymentScreen(
                  image: paymentList[index]['image'],
                  onValue: paymentList[index]['isColor'],
                  onChange: (value) {
                    debugPrint("Value --->> $value");
                    for (int i = 0; i < paymentList.length; i++) {
                      if (i == index) {
                        paymentList[i]['isColor'] = true;
                      } else {
                        paymentList[i]['isColor'] = false;
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
