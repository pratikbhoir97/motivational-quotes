import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../data/model/motivation.dart';
import '../data/model/quotesModel.dart';

class QuotesMessagesScreen extends StatefulWidget {
  String? title;
  String? jsonPathfile;

  QuotesMessagesScreen({required this.title, required this.jsonPathfile});

  @override
  _QuotesMessagesScreen createState() =>
      _QuotesMessagesScreen(title: title, jsonPathfile: jsonPathfile);
}

class _QuotesMessagesScreen extends State<QuotesMessagesScreen> {
  _QuotesMessagesScreen({required this.title, required this.jsonPathfile});

  String? title;
  String? jsonPathfile;

  late List quoteList = [];
  List<bool> isFavoriteList = List.generate(myList1.imageList.length, (index) => false);

  @override
  void initState() {
    print('quote message screen title $title , jsonPathfile $jsonPathfile');
    initData();

// TODO: implement initState
    super.initState();
  }

  Future<String> parseJsonFromAssets(String assetsPath) async {
    print('--- Parse json from: $assetsPath');
    return rootBundle.loadString(assetsPath.toString());
    // .then((jsonStr) => jsonDecode(jsonStr));
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
            shadowColor: Colors.blue,
            iconTheme: IconThemeData(color: Colors.white),
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            title: Text(
              title.toString(),
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: myList1.imageList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    // height: 250,
                    constraints: BoxConstraints(
                        minHeight: 250),
                    padding: const EdgeInsets.all(16.0),
                    // Set the desired height of the container
                    margin: EdgeInsets.only(left: 2.0, right: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(myList1.imageList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    foregroundDecoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      backgroundBlendMode: BlendMode.saturation,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                "${quoteList.elementAt(index)['Quote']}",
                                style: TextStyle(
                                    fontSize: quoteList.elementAt(index)['Quote'].toString().length<120 ? 22 :18,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                      children: [
                        Expanded(child: Container()),
                        IconButton(
                          icon: Icon(Icons.favorite_rounded,
                            color: isFavoriteList[index] ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                          setState(() {
                            isFavoriteList[index] = !isFavoriteList[index];
                          });
                          },
                        ),
                        IconButton(icon: Icon(Icons.copy),
                          onPressed: () async{
                            await Clipboard.setData(ClipboardData(text: "${quoteList.elementAt(index)['Quote']}"));
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () {
                            // Share.share("${quoteList.elementAt(index)['Quote']}");
                          },
                        ),
                      ],
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void initData() {
    parseJsonFromAssets(jsonPathfile.toString()).then((jsonData) async {
      print('dmap  $jsonData');
      final list = jsonDecode(jsonData) as List<dynamic>;
      list.map((e) => QuotesModel.fromJson(e)).toList();

      setState(() {
        quoteList = list;
      });

      // final tempJsonData = jsonDecode(jsonData);
      // List<QuotesModel> quotesModelListtemp = tempJsonData;
      // // List<QuotesModel> quotesModelList = list as List<QuotesModel>;
      //
      //
      // QuotesModelData quotesModelData = Provider.of<QuotesModelData>(context, listen: false);
      // quotesModelData.addQuotesModelList(quotesModelListtemp);
    });
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

