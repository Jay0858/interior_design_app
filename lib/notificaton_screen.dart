import 'package:flutter/material.dart';
import 'package:interior_app/commen_screen/commen_notification_screen.dart';

class NotificatonScreen extends StatefulWidget {
  const NotificatonScreen({Key? key}) : super(key: key);

  @override
  State<NotificatonScreen> createState() => _NotificatonScreenState();
}

class _NotificatonScreenState extends State<NotificatonScreen> {
  List notificationList = [
    {
      "image": "assets/images/notione.png",
      "name": "Your order #123456789 has\nbeen shipped successfully",
      "nametwo": "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
      "isColor": true,
    },
    {
      "image": "assets/images/notitwo.png",
      "name": "Your order #123456789 has\nbeen shipped",
      "nametwo": "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
      "isColor": true,
    },
    {
      "image": "assets/images/notithree.png",
      "name": "Your order #123456789 has\nbeen confirmed",
      "nametwo": "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
      "isColor": false,
    },
    {
      "image": "assets/images/notifour.png",
      "name": "Discover hot sale\nfurnitures this week.",
      "nametwo": "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
      "isColor": false,
    },
    {
      "image": "assets/images/notifive.png",
      "name": "Your order #123456789 has\nbeen canceled",
      "nametwo": "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
      "isColor": false,
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
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Notificaton",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: notificationList.length,
                  separatorBuilder: (context, index) => const Divider(
                    height: 30,
                    color: Color(0xFFE0E0E0),
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  itemBuilder: (context, index) => CommenNotificationScreen(
                    image: notificationList[index]['image'],
                    text: notificationList[index]['name'],
                    texttwo: notificationList[index]['nametwo'],
                    isColor: notificationList[index]['isColor'],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
