import 'package:cloth_selling_app/utils/widgets/home_widgets/add_to_cart.dart';
import 'package:cloth_selling_app/utils/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/second_product.dart';
import '../utils/widgets/home_widgets/cloth_image.dart';

class HomeDetailPage extends StatelessWidget {
  final Item cloth;

  const HomeDetailPage({super.key, required this.cloth})
      : assert(cloth != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),

      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child:ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: ["\$${cloth.price}".text.bold.xl4.red800.make(),
               AddToCart(
                cloth:cloth,) .wh(120, 50)
                ],
              ).p32(),
      ),

      // ignore: dead_code
      body: SafeArea(
        child: Column(
          children: [
            // Hero(
            //   tag:Key(cloth.id.toString()),
            // Hero(tag:Key(cloth.id.toString()),
            // hero( key:Key(cloth.id.toString()),
            ClothImage(
              image: cloth.image,
            ),
            Expanded(
                child: VxArc(
              height: 10.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color:context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    cloth.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    cloth.desc.text.xl.textStyle(context.captionStyle).make(),
                    10.heightBox,
                  ],
                ),
              ).py16(),
            ))
            // )
            // ),

            // Image.asset(cloth.image,height: 400,width: 350,), child: null,
            // ),
          ],
        ),
      ),
    );
  }
}
