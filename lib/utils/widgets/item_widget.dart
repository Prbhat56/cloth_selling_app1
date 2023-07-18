import 'dart:html';

import 'package:flutter/material.dart';

import '../../models/second_product.dart';

// ignore: depend_on_referenced_packages
class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Image.asset("this.image"),
      title: Text(
        item.name,
        textScaleFactor: 1.5,
        selectionColor: Colors.deepOrange,
      ),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}"),
    ));
  }
}
