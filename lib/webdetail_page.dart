

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebDetailPage extends StatefulWidget {
 
  final String? webUrl;
  

  const WebDetailPage({Key? key, 
  
    @required this.webUrl,
  }) : super(key: key);

  @override
  State<WebDetailPage> createState() => _WebDetailPageState();
}

class _WebDetailPageState extends State<WebDetailPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
     bool isLoading=true;
    return Scaffold(
      
     body: Center(
        child: WebView(
          initialUrl: widget.webUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
               // ignore: unused_label
               onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            isLoading ? const Center( child: CircularProgressIndicator( valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),),)
                    : Stack();
          };
        },
      )
    ));
  }
}

