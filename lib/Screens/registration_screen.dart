import 'package:assessment_dareen_hany/Providers/registration_provider.dart';
import 'package:assessment_dareen_hany/Screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Registration_Screen extends StatelessWidget
{
  GlobalKey<FormState> formkey = GlobalKey();
    @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text("Sign Up"),
              ],
            ),
      ),
       body:
        Consumer<Registration_Provider>
        (
            builder:
            (context, providerobject, child) {
                return Center(
                   child: Container(
                      width: 300,
                      child:
                      Form(
                        key: formkey,
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:
                            [
                              SizedBox(height: 40),
                              Container(
                                width:300,
                                padding: EdgeInsets.all(10),
                                child:
                                TextFormField
                                  (
                                  decoration: InputDecoration(
                                    hintText: "Your name",
                                    prefixIcon: Icon(Icons.person),
                                    border: OutlineInputBorder
                                      (
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  validator: (value)
                                  {
                                    if(value!.isEmpty || value == null)
                                    {
                                      return("Field is required");
                                    }
                                    if(value.length < 5 || value.length > 10)
                                    {
                                      return("enter valid name");
                                    }
                                  },
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 300,
                                child:
                                TextFormField
                                  (
                                  decoration: InputDecoration(
                                    hintText: "Phone Number",
                                    prefixIcon: Icon(Icons.phone_android),
                                    border: OutlineInputBorder
                                      (
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  validator: (value)
                                  {
                                    if(value!.isEmpty || value == null)
                                    {
                                      return("Field is required");
                                    }
                                    if(value.length != 11)
                                    {
                                      return("enter valid phone number");
                                    }
                                  },
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 300,
                                child:
                                TextFormField
                                  (
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    prefixIcon: Icon(Icons.email_sharp),
                                    border: OutlineInputBorder
                                      (
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  validator: (value)
                                  {
                                    if(value!.isEmpty || value == null)
                                    {
                                      return("Field is required");
                                    }
                                    if(value.length < 10 || value.length > 16)
                                    {
                                      return("enter valid email");
                                    }
                                  },
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 300,
                                child:
                                TextFormField
                                  (
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    prefixIcon: Icon(Icons.password),
                                    border: OutlineInputBorder
                                      (
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  validator: (value)
                                  {
                                    if(value!.isEmpty || value == null)
                                    {
                                      return("Field is required");
                                    }
                                    if(value.length < 7 || value.length > 15)
                                    {
                                      return("enter valid password");
                                    }
                                  },
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton
                                (
                                style:ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      )
                                  ),
                                ) ,
                                onPressed: ()
                                {
                                   if(formkey.currentState!.validate())
                                   {
                                         Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen()));
                                   }
                                }, child: Text("Sign Up"),
                              ),
                              Row(
                                children:
                                [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 20),
                                      Text("Already have an account"),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: ()
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen()));
                                    }, child: Text("Login"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                      ),
                    ),
                );
            },
        ),
    );
  }
}