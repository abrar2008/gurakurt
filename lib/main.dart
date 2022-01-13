import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gurukart/home.dart';
import 'package:gurukart/webdetail_page.dart';



import 'package:webview_flutter/webview_flutter.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:Color(0xff922A8D), // navigation bar color
    statusBarColor:  Color(0xff922A8D), // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GuruKart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
     home: Home() ,
    );
  }
}

