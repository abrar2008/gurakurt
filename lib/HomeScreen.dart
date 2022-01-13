import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    

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
                  image: AssetImage('assets/logo.png'),
                  ),
            ),
          )
       
       
        ],
      ),
    );
  }
}
