
import 'package:assessment_dareen_hany/Providers/registration_provider.dart';
import 'package:assessment_dareen_hany/Screens/product_screen.dart';
import 'package:assessment_dareen_hany/Screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login_Screen extends StatelessWidget
{
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold
      (
        appBar: AppBar(title: Text("Login"),),
        body:
        Consumer<Registration_Provider>
          (
          builder: (context, providerobject, child) {
            return Center(
              child: Container(
                width: 300,
                height: 700,
                child:
                Form(
                  key: formkey,
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                    [
                      CircleAvatar(
                          child: Image.asset("assest/OIP.jpeg"),
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
                            if(value.length < 10 || value.length > 20)
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
                        onPressed: () async
                        {
                          if(formkey.currentState!.validate())
                          {
                            if(providerobject.loginmodelobject!.status == true)
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Product_Screen()));
                            }
                          }
                        }, child: Text("Login"),
                      ),
                      Row(
                        children:
                        [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 20),
                              Text("Don't have an account"),
                            ],
                          ),
                          TextButton(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Registration_Screen()));
                            }, child: Text("Sign up"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        )
    );
  }
}