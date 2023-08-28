import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/screens/details/components/add_to_cart.dart';
import 'package:shopping_app/screens/details/components/color_and_size.dart';
import 'package:shopping_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:shopping_app/screens/details/components/description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.37),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(children: [
                    ColorAndSize(product: product),
                    const SizedBox(
                      height: kDefaultPaddin / 3,
                    ),
                    Description(product: product),
                    const SizedBox(
                      height: kDefaultPaddin / 3,
                    ),
                    const CounterWithFavBtn(),
                    const SizedBox(
                      height: kDefaultPaddin / 4,
                    ),
                    AddToCart(product: product)
                  ]),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
