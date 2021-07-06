import 'dart:async';
import 'package:bmi_calculator/views/Home_page.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool loaded = false;

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Stack(
          children: [
            Positioned.fill(child: Image.asset('assets/images/splash-screen.jpg',fit: BoxFit.fill,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5
                  ,child: Container(),),
                Image.asset('assets/images/appLogo.png',height: 120,),
                Expanded(
                  flex:5,child: Container(),),
                Image.asset('assets/images/tick.png',height: 60,),
                Expanded(
                  flex: 1,child: Container(),),

              ],
            )
          ],
        )
    );
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, () {
      navigationPage();
    });
  }

  void navigationPage( ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(

        ),
      ),
    );
  }

}