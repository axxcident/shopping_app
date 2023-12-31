import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/home/components/body.dart';

// stl för att bygga något snabbt

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});   Vet ej om denna behövs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: () {}),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          // color: kTextColor,
          onPressed: () {},
        ),
        IconButton(
          // color: Colors.black87,
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
