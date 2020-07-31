import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}
mydata() async{
var url='http://192.168.1.13/cgi-bin/dates.py';


http.Response response= await http.get(url);
print(response.body);

 
}
mybody(){
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const RaisedButton(
          onPressed: mydata,
          child: Text(
            'CHECK DATE',
            style: TextStyle(fontSize: 20,color: Colors.red,),
          
          ),
  )]));
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('WEB APP')),
        backgroundColor: Colors.red,),
         body: mybody(),
      ),
     

     debugShowCheckedModeBanner: false, 
    );
  }
}
