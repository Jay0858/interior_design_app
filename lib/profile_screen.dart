import 'package:flutter/material.dart';
import 'package:interior_app/commen_screen/commen_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List profileList = [
    {
      "name": "My orders",
      "nametwo": "Already have 10 orders",
    },
    {
      "name": "Shipping Addresses",
      "nametwo": "03 Addresses",
    },
    {
      "name": "Payment Method",
      "nametwo": "You have 2 cards",
    },
    {
      "name": "My reviews",
      "nametwo": "Reviews for 5 items",
    },
    {
      "name": "Setting",
      "nametwo": "Notification, Password, FAQ, Contact",
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
                const SizedBox(height: 15),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Image.asset(
                        height: 80,
                        "assets/images/watson.png",
                      ),
                      const SizedBox(width: 15),
                      Column(
                        children: const [
                          Text(
                            "Kristin Watson",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              fontFamily: "Inter",
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "bruno203@gmail.com",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: "Inter",
                              color: Color(0xFF808080),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: profileList.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 20),
                  itemBuilder: (context, index) => CommenProfileScreen(
                    text: profileList[index]['name'],
                    texttwo: profileList[index]['nametwo'],
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
