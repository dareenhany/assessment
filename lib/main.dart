import 'package:assessment_dareen_hany/Providers/products_provider.dart';
import 'package:assessment_dareen_hany/Providers/registration_provider.dart';
import 'package:assessment_dareen_hany/Screens/product_screen.dart';
import 'package:assessment_dareen_hany/Screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider
    (
         providers:
         [
             ChangeNotifierProvider(create: (context) => Registration_Provider()),
             ChangeNotifierProvider(create: (context) => Product_Provider()),
         ],
         child:
        MaterialApp
        (
          debugShowCheckedModeBanner: false,
           home: Registration_Screen(),
        ),
    );
  }
}

