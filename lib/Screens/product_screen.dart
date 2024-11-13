import 'package:assessment_dareen_hany/Providers/products_provider.dart';
import 'package:assessment_dareen_hany/Screens/details_screen.dart';
import 'package:assessment_dareen_hany/Widgets/details_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/product_widget.dart';

class Product_Screen extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar(
        title: Text("Products"),
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
                  return GestureDetector
                  (
                    onTap: ()
                    {
                      Navigator.push
                      (
                          context, MaterialPageRoute
                          (
                            builder: (context) => DetailsScreen()
                          ),
                      );
                    },
                      child:
                         GridView.builder
                         (
                             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 , crossAxisSpacing: 4),
                             itemBuilder: (context, index) {
                              return Product_Widget
                              (
                                imagewidget: providerobject.productsmodelobject!.products[index]["data"]["products"]["images"],
                                categorywidget: providerobject.productsmodelobject!.products[index]["data"]["products"]["names"],
                                pricewidget: providerobject.productsmodelobject!.products[index]["data"]["products"]["prices"],
                              );
                             },
                             itemCount: providerobject.productsmodelobject!.products.length,
                         ),
                  );
                }
             },
         ),
    );
  }
}