// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


import 'package:cloth_selling_app/utils/route.dart';
import 'package:cloth_selling_app/utils/widgets/drawer.dart';
import 'package:cloth_selling_app/utils/widgets/home_widgets/closet_header.dart';
import 'package:cloth_selling_app/utils/widgets/home_widgets/cloth_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:cloth_selling_app/models/second_product.dart';
import 'package:cloth_selling_app/utils/widgets/theme.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  void initState() {
    super.initState();
    loadData() async {
      var catalogJson =
          await rootBundle.loadString("assets/files/catalog.json");
      var decodeData = jsonDecode(catalogJson);
      var productData = decodeData["products"];
      ClothModel.items = List.from(productData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Closet"),
      ) ,
      drawer: MyDrawer(),
        backgroundColor: context.canvasColor,
        floatingActionButton: FloatingActionButton(onPressed:(() => Navigator.pushNamed(context, MyRoutes.cartPageRoute)),

        
        backgroundColor: context.theme.buttonColor,
        child: Icon(CupertinoIcons.cart,color: Colors.white,), ),
        body: SafeArea(
            child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClosetHeader(),
              if (ClothModel.items != null && ClothModel.items.isNotEmpty)
                ClothList().py16().expand()
              else
                 CircularProgressIndicator().centered().expand(),
                
            ],
          ),
        )));
  }
}



