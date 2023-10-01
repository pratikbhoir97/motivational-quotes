import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home/categoryScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){

      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>CategoryScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body:
    Container(
      color:   Color(hexColor('#541388')),
      child: const SafeArea(
            child: Center(
              child: Text("Motivational Qoutes",style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontStyle: FontStyle.italic,

              ),),
            ),
          ),
    ),

      ),
    );
  }
}
int hexColor(String color){
  String newColor='0xff' +color;
  newColor =newColor.replaceAll('#', '');
  int finalColor=int.parse(newColor);
  return finalColor;
}