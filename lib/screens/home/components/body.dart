import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/Product.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Women",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                  )),
        ))
        // const ItemCard()
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  // final Function press;                  Anvand dessa senare!!!!
  const ItemCard({
    super.key,
    required this.product,
  });
  // Key key,

  // this.press,
  //  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(kDefaultPaddin),
          // height: 180,
          // width: 160,
          decoration: BoxDecoration(
              color: product.color, borderRadius: BorderRadius.circular(16)),
          child: Image.asset(product.image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            product.title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\$${product.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
