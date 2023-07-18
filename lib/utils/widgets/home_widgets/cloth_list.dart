import 'package:cloth_selling_app/models/cart.dart';
import 'package:cloth_selling_app/pages/home_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../models/second_product.dart';
import '../theme.dart';
import 'add_to_cart.dart';
import 'cloth_image.dart';

class ClothList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ClothModel.items.length,
      itemBuilder: ((context, index) {
        final cloth = ClothModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeDetailPage(cloth: cloth)),
          ),
          child: ClothItem(
            cloth: cloth,
          ),
        );
      }),
    );
  }
}

class ClothItem extends StatelessWidget {
  final Item cloth;

  const ClothItem({required this.cloth}) : assert(cloth != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        //  Hero( key:Key(cloth.id.toString()),
        ClothImage(
          image: cloth.image,
        ),
        //  ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cloth.name.text.lg.color(context.accentColor).bold.make(),
              cloth.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${cloth.price}".text.bold.xl.make(),
                  AddToCart(cloth: cloth)
                ],
              ).pOnly(right: 8.0)
            ],
          ),
        )
      ],
    )).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}


