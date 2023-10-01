import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motivational_quotes/home/quotes_messages_screen.dart';
import '../data/model/catogary.dart';
import '../util/configuration.dart';


class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreen createState() => _CategoryScreen();
}

class _CategoryScreen extends State<CategoryScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop(true);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
      backgroundColor: Color(hexColor('#541388')),
          centerTitle: true,
          shadowColor: Colors.black26,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          title: Text(
            'Motivational Quotes',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
        body:  GridView.count(
          crossAxisCount: 2,
          children: List.generate(categoryDataList.imageList.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridTile(
                child: Container(
                  height: 450,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: categoryDataList.gradients[index],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 3.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          2.0, // Move to right 5  horizontally
                          4.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],// Use the desired gradient from the list
                  ),
                  child: Container(
                    child: InkWell(
                      onTap: (){

                        print('Configuration.categoryNameList.elementAt(index) ${Configuration.categoryNameList.elementAt(index)}');
                        print('Configuration.categoryNameList.elementAt(index) ${Configuration.quoteJsonPath.elementAt(index)}');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuotesMessagesScreen(
                            title: Configuration.categoryNameList.elementAt(index),
                            jsonPathfile:Configuration.quoteJsonPath.elementAt(index),
                          )),
                        );
                      //   if(index == 0){
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => MotivationScreen(
                      //         title: "Inspiration",
                      //         jsonPathfile:"assets/json_files/inspiration.json",
                      //
                      //       )),
                      //     );
                      //   }
                      // else if(index == 1){
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => MotivationScreen(
                      //         title: "Education",
                      //         jsonPathfile:"assets/json_files/education.json",
                      //
                      //       )),
                      //     );
                      //   }



                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(categoryDataList.nameList[index],
                        style: TextStyle(fontSize: 22, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage(categoryDataList.imageList[index]),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                )

              ),
            );
          }),
        ),





      ),
    );
  }
}
int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}



