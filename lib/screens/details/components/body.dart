import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product.dart';

class Body extends StatelessWidget {
  // const Body({super.key, required this.product});
  final Product product;

  const Body({super.key, required this.product});

  // const Body({Key? key, required this.product}) : super(key: key);

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
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: BoxDecoration(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
