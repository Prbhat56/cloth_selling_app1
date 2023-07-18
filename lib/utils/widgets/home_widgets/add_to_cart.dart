import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/store.dart';
import '../../../models/cart.dart';
import '../../../models/second_product.dart';

class AddToCart extends StatelessWidget {
  final Item cloth;
  AddToCart({super.key, required this.cloth});

  @override
  Widget build(BuildContext context) {
    
    
    final CartModel _cart = (VxState.store as MyStore).cart;
      final ClothModel _cloth = (VxState.store as MyStore).cloth;
    bool isInCart = _cart.items.contains(cloth);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          

          _cart.cloth = _cloth;
          _cart.add(cloth);
          //setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
