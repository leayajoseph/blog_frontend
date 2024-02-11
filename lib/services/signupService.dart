import 'dart:convert';

import 'package:http/http.dart' as http;

class SignupApiService
{
  Future<dynamic> sendDate(
      String email, String pass
      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/signup/login");
    var response=await client.post(apiUrl,
    headers: <String,String>{
      "Content-Type":"application/json ; charset=UTF-8"
    },
    body: jsonEncode(<String,String>{
      "email":email,
      "password":pass
    }));
    if(response.statusCode==200)
      {
        return json.decode(response.body);
      }
    else
      {
        throw Exception("Failed");
      }
  }

  Future<dynamic> addValues(
      String name,String age,String ph,String address,String pin,String email, String pass
      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/signup/add");
    var response=await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type":"application/json ; charset=UTF-8"
        },
        body: jsonEncode(<String,String>{
          "name":name,
          "age":age,
          "mobile":ph,
          "address":address,
          "pincode":pin,
          "email":email,
          "password":pass
        }));
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("Failed");
    }
  }


}