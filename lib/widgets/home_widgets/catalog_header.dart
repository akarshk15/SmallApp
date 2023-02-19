import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "SMALL App".text.xl5.bold.color(context.theme.accentColor).make(),
        "Fruits".text.xl2.make(),
      ],
    );
  }
}
