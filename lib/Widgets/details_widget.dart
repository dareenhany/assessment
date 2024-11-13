import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details_Widget extends StatelessWidget
{
  String imagewidget , categorywidget  , descriptionwidget ;

  Details_Widget({required this.imagewidget , required this.categorywidget  , required this.descriptionwidget});

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
          Text(descriptionwidget),
        ],
      ),
    );
  }
}