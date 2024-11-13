import 'package:assessment_dareen_hany/Models/registration_model.dart';
import 'package:dio/dio.dart';

class Registration_Service
{
     static Dio dio = Dio();
     static postData() async
     {
        await dio.post("https://student.valuxapps.com/api/register" ,
            data:
            {
              "name": "Dareen",
              "phone": "010063177640",
              "email": "dareen123@gmail.com",
              "token": "4zWdWcC4YoynXWHkolj5bcKUsLtIWU4usxj4kE4TShGGqK6sYfJOGX3CV4jhhFgFFqSKRo",
            },
        );
     }
}