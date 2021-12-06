import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gurukart/webdetail_page.dart';



import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GuruKart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
     home:const SplashScreen() ,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const GuruKart()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
           
              image: DecorationImage(
                  image: AssetImage('assets/gur.jpg',
                  
                  ),
                  // fit: BoxFit.contain,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

class GuruKart extends StatefulWidget {
  const GuruKart({ Key? key }) : super(key: key);

  @override
  State<GuruKart> createState() => _GuruKartState();
}

class _GuruKartState extends State<GuruKart> {
@override
  void initState() {
     super.initState();
         // Enable hybrid composition.
 if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
   }

  @override
  Widget build(BuildContext context) {
    return   const SafeArea(
      child: 
      WebDetailPage(
        webUrl: "https://gurukart.pk/",
      
      )
    );
  }
}






