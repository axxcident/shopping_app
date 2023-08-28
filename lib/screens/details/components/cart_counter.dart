import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});
  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int NumOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
            icon: Icons.remove,
            press: () {
              if (NumOfItems > 1) {
                setState(() {
                  NumOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            NumOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                NumOfItems++;
              });
            })
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      height: 34,
      width: 34,
      child: OutlinedButton(
        // style here deviating from YT video
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
