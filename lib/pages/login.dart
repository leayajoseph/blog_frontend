import 'package:blog/pages/BlogApp.dart';
import 'package:blog/services/signupService.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController ob1=new TextEditingController();
  TextEditingController ob2=new TextEditingController();
  void sendValues() async{
    final response=await SignupApiService().sendDate(ob1.text, ob2.text);
    if(response["status"]=="success")
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BlogApp()));
      }
    else if(response["status"]=="invalid email id")
      {
        print("Invalid email id");
      }
    else
      {
        print("invalid password");
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       padding: EdgeInsets.all(20),
       width: double.infinity,
       decoration: BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Colors.blue.shade900.withOpacity(0.4),
             Colors.blue.shade500.withOpacity(0.4),
             Colors.blue.shade300.withOpacity(0.4),
           ]
         )
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextField(
             controller: ob1,
             decoration: InputDecoration(
               labelText: "Enter email id",
               border: OutlineInputBorder()
             ),
           ),
           SizedBox(height: 10,),
           TextField(
             controller: ob2,
             decoration: InputDecoration(
                 labelText: "Enter password",
                 border: OutlineInputBorder()
             ),
           ),
           SizedBox(height: 10,),
           ElevatedButton(onPressed: sendValues, child: Text("Login")),
           SizedBox(height: 10,),
           ElevatedButton(onPressed: ()
           {

           }, child: Text("Sign up")),
           SizedBox(height: 10,),


         ],

       ),
     ),
    );
  }
}
