import 'package:flutter/material.dart';

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Blog App",
          style: TextStyle(color: Colors.white),),
        ),
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

              ElevatedButton(onPressed: ()
                  {

                  }, child: Text("Add Blog")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()
              {

              }, child: Text("View Blog")),
              SizedBox(height: 10,),


            ],

          ),
        ),
      )
    );
  }
}
