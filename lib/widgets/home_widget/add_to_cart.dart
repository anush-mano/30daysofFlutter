import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({super.key, required this.catalog});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          final _catalog = CatalogModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {
            isInCart = !isInCart;
          });
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      child: isInCart
          ? Icon(Icons.done, color: Colors.white)
          : Icon(CupertinoIcons.cart_fill_badge_plus, color: Colors.white),
    );
  }
}
