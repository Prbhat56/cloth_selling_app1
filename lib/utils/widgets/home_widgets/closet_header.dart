
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class ClosetHeader extends StatelessWidget {
  const ClosetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Closet".text.xl5.bold.color(context.theme.accentColor).make(),
      "Trending product".text.xl2.make(),
    ]);
  }
}