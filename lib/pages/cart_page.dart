import 'package:cloth_selling_app/models/cart.dart';
import 'package:cloth_selling_app/pages/payment_page.dart';
import 'package:cloth_selling_app/utils/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';
import 'home_page1.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.make(),
        ),
        body: Column(children: [
          CartList().p32().expand(),
          Divider(),
          CartTotal(),
        ]));
  }
}

class CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        "\$${_cart.totalPrice}"
            .text
            .xl5
            .color(context.theme.accentColor)
            .make(),
        30.widthBox,
        ElevatedButton(
           onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => PaymentPage()),
                                ));
                          },
          // onPressed: () {
          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //     content: "Buying not supported yet.".text.make(),
          //   ));
          // },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(context.theme.buttonColor)),
          child: "Buy".text.white.make(),
        ).w32(context)
      ]),
    );
  }
}

class CartList extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: ((context, index) => ListTile(
                  leading: Icon(Icons.done),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      _cart.remove(_cart.items[index]);
                    },
                  ),
                  title: _cart.items[index].name.text.make(),
                )),
          );
  }
}
