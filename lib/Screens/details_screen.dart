import 'package:assessment_dareen_hany/Providers/products_provider.dart';
import 'package:assessment_dareen_hany/Widgets/details_widget.dart';
import 'package:assessment_dareen_hany/Widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body:
      Consumer<Product_Provider>
        (
        builder: (context, providerobject, child) {
           if(providerobject.productsmodelobject == null)
           {
               providerobject.getproduct();
               return Center
              (
                  child:
                   CircularProgressIndicator(),
              );
          }
          else
          {
            return GestureDetector(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child:
              GridView.builder
                (
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                ),
                itemBuilder: (context, index) {
                  return Details_Widget(
                      imagewidget: providerobject.productsmodelobject!.products[index]["data"]["Image"],
                      categorywidget: providerobject.productsmodelobject!.products[index]["data"]["Name"],
                      descriptionwidget: providerobject.productsmodelobject!.products[index]["data"]["Description"],
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}

