import 'package:cloth_selling_app/models/second_product.dart';
import 'package:flutter/material.dart';

class CartModel {
 

  late ClothModel _cloth;
  final List<int> _ItemIds = [];
  ClothModel get cloth => _cloth;
  set cloth(ClothModel newCloth) {
    assert(newCloth != null);
    _cloth = newCloth;
  }

  List<Item> get items => _ItemIds.map((id) => _cloth.getById(id)).toList();
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
  void add(Item item) {
    _ItemIds.add(item.id);
  }

  void remove(Item item) {
    _ItemIds.remove(item.id);
  }
}
