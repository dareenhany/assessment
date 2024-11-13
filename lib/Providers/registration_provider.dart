import 'package:assessment_dareen_hany/Models/login_model.dart';
import 'package:assessment_dareen_hany/Models/registration_model.dart';
import 'package:assessment_dareen_hany/Services/login_service.dart';
import 'package:assessment_dareen_hany/Services/registration_service.dart';
import 'package:flutter/material.dart';

class Registration_Provider extends ChangeNotifier
{
   Registration_Model? registrationmodelobject;
   Login_Model? loginmodelobject;
   Future<void> postregistration() async
   {
      registrationmodelobject = await Registration_Service.postData();
      loginmodelobject = await Login_Service.postData();
      notifyListeners();
   }
}