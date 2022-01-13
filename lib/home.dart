
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gurukart/HomeScreen.dart';

import 'package:webview_flutter/webview_flutter.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = true;

  late WebViewController webView;

  Future<bool> _onBack() async {
    var value = await webView.canGoBack();

    if (value) {
      await webView.goBack();
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBack(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              WebView(
                initialUrl: 'https://gurukart.pk/',
                javascriptMode: JavascriptMode.unrestricted,
                onPageStarted: (url) {
                  setState(() {
                    isLoading = true;
                  });
                },
                onPageFinished: (status) {
                  setState(() {
                    isLoading = false;
                  });
                },
                onWebViewCreated: (WebViewController controller) {
                  webView = controller;
                },
              ),
              isLoading
                  ? HomeScreen()
                  : Stack(),
            ],
          ),
        ),
      ),
    );
  }
}