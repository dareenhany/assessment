import 'package:assessment_dareen_hany/Models/product_model.dart';
import 'package:dio/dio.dart';

class Product_Service
{
   static Dio dio = Dio();
   
   static getData() async
   {
      try
      {
         Response response = await dio.get("https://student.valuxapps.com/api/home");
         if(response.statusCode == 200)
         {
            print(response.data);
            return Products_Model.fromjson(response.data);
         }
         else
         {
           return("Error");
         }
      }
      catch(e)
      {
        throw Exception(e);
      }
   }
}