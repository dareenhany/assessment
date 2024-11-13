import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Product_Widget extends StatelessWidget
{
  String imagewidget , categorywidget  , pricewidget ;

  Product_Widget({required this.imagewidget , required this.categorywidget  , required this.pricewidget});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      child:
      Column
        (
        children:
        [
          Image.network(imagewidget),
          Text(categorywidget),
          Text(pricewidget),
        ],
      ),
    );
  }
}