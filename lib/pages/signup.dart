import 'package:blog/services/signupService.dart';
import 'package:flutter/material.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  TextEditingController ob1 =new TextEditingController();
  TextEditingController ob2 =new TextEditingController();
  TextEditingController ob3 =new TextEditingController();
  TextEditingController ob4 =new TextEditingController();
  TextEditingController ob5 =new TextEditingController();
  TextEditingController ob6 =new TextEditingController();
  TextEditingController ob7 =new TextEditingController();

  void sendValues() async{
final response=await SignupApiService().addValues(ob1.text, ob2.text, ob3.text, ob4.text, ob5.text, ob6.text, ob7.text);
if(response["status"]=="success")
  {
    print("successfully added");
  }
else
  {
    print("failed to add");
  }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                    labelText: "Enter name",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: ob2,
                decoration: InputDecoration(
                    labelText: "Enter age",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: ob3,
                decoration: InputDecoration(
                    labelText: "Enter mobile",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: ob4,
                decoration: InputDecoration(
                    labelText: "Enter address",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: ob5,
                decoration: InputDecoration(
                    labelText: "Enter pin code",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: ob6,
                decoration: InputDecoration(
                    labelText: "Enter email id",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: ob7,
                decoration: InputDecoration(
                    labelText: "Enter password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: sendValues, child: Text("sign up")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()
              {
                Navigator.pop(context);
              }, child: Text("back")),
              SizedBox(height: 10,),


            ],

          ),
        ),
      ),
    );
  }
}
