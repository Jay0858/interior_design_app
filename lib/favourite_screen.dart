import 'package:flutter/material.dart';
import 'package:interior_design_app/commen_screen/commen_favorite_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List FavoriteList = [
    {
      "image": "assets/images/favone.png",
      "name": "Minimal Stand",
      "nametwo": "\$ 25.00",
    },
    {
      "image": "assets/images/favtwo.png",
      "name": "Minimal Stand",
      "nametwo": "\$ 25.00",
    },
    {
      "image": "assets/images/favthree.png",
      "name": "Minimal Stand",
      "nametwo": "\$ 25.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Favorites",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xFFE0E0E0),
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: FavoriteList.length,
                separatorBuilder: (context, index) => const Divider(
                  color: Color(0xFFE0E0E0),
                  height: 40,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                itemBuilder: (context, index) => CommenFavoriteScreen(
                  image: FavoriteList[index]['image'],
                  text: FavoriteList[index]['name'],
                  texttwo: FavoriteList[index]['nametwo'],
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
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 75),
                  child: const Text(
                    "Add all to my cart",
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
      ),
    );
  }
}
