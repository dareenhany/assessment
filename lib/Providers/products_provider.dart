import 'package:assessment_dareen_hany/Models/details_model.dart';
import 'package:assessment_dareen_hany/Models/product_model.dart';
import 'package:assessment_dareen_hany/Services/product_service.dart';
import 'package:flutter/material.dart';

class Product_Provider extends ChangeNotifier
{
  Products_Model? productsmodelobject;
  Details_Model? productsmodelobjectd;

  Future<void> getproduct() async
  {
     productsmodelobject = await Product_Service.getData();
     productsmodelobjectd = await Product_Service.getData();
     notifyListeners();
  }
}