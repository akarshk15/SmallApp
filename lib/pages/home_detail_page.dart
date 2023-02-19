import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\Rs.${catalog.price}/kg".text.bold.xl3.red800.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: Column(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image),
          ).h32(context),
          Expanded(
              child: VxArc(
            height: 30.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: Wrap(
                children: [
                  catalog.name.text.xl4.color(context.accentColor).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                  10.heightBox,
                  "Apples contain small amounts of many vitamins and minerals and are well known for their vitamin C and potassium contents. One medium-sized apple provides more than 3% of the Daily Value (DV) for both ( 2 ). This fruit also boasts vitamin K, vitamin B6, manganese, and copper ( 2 ).Ten attributes were selected to describe the apple characteristics: fruitiness, acidity, sweetness, juiciness, crispness, hardness, toughness, mealiness, vegetativeness, and astringency."
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p16()
                ],
              ).py64(),
            ),
          ))
        ],
      ),
    );
  }
}
