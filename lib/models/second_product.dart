// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:core';

import 'package:cloth_selling_app/utils/widgets/home_widgets/cloth_list.dart';
import 'package:flutter/material.dart';

import 'package:cloth_selling_app/models/second_product.dart';

import 'second_product.dart';
import 'second_product.dart';

class ClothModel {
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // late List<Item> items;
  static List<Item> items = [
     Item(
        id: 6,
        name: "jacket",
        desc: "super",
        price: 956,
        color: "black",
        image: "jacket.jpeg"),
        
         Item(
        id: 6,
        name: "lower",
        desc: "women",
        price: 34,
        color: "black",
        image: "lower.jpeg"),
    Item(
        id: 1,
        name: "lahenga",
        desc: "ygefucuiefiijfe",
        price: 3444,
        color: "orange",
        image: "first.jpg"),
    Item(
        id: 2,
        name: "lahenga",
        desc: "ygefucuiefiijfe",
        price: 3444,
        color: "orange",
        image: "first.jpg"),
    Item(
        id: 1,
        name: "lahenga",
        desc: "super",
        price: 1000,
        color: "pink",
        image: "first.jpg"),
    Item(
        id: 2,
        name: "kurti",
        desc: "super",
        price: 900,
        color: "pink",
        image: "second.jpeg"),
    Item(
        id: 3,
        name: "jeans",
        desc: "super",
        price: 900,
        color: "pink",
        image: "fifth.jpg"),
    Item(
        id: 4,
        name: "shirt",
        desc: "super",
        price: 900,
        color: "pink",
        image: "second.jpeg"),
    Item(
        id: 5,
        name: "lahenga",
        desc: "super",
        price: 900,
        color: "pink",
        image: "third.jpg"),
    Item(
        id: 6,
        name: "lahenga",
        desc: "super",
        price: 900,
        color: "pink",
        image: "thirteenth.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };

  Map<String, dynamic> toMaps() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);
}
