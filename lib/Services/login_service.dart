import 'package:dio/dio.dart';

class Login_Service
{
  static Dio dio = Dio();
  static postData() async
  {
    await dio.post("https://student.valuxapps.com/api/login" ,
      data:
      {
        "name": "Dareen",
        "email": "dareen123@gmail.com",
      },
    );
  }
}