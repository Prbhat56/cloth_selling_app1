


import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class ClothImage extends StatelessWidget {
  final String image;

  const ClothImage({super.key, required this.image}) : assert(image != null);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image
    ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
  }
}