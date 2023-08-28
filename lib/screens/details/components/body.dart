import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  // const Body({super.key, required this.product});
  final Product product;

  const Body({super.key, required this.product});

  // const Body({Key? key, required this.product}) : super(key: key);
  // margin: EdgeInsets.only(top: size.height * 0.3),

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.32),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
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
