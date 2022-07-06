import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/components/heading_widgets.dart';
import 'package:rakhigangwalkv3/components/listItem.dart';
import 'package:rakhigangwalkv3/constants.dart';
import 'package:url_launcher/url_launcher.dart';
class Ch4 extends StatefulWidget {
  static const id = 'ch4';

  @override
  _Ch4State createState() => _Ch4State();
}

class _Ch4State extends State<Ch4> {
  String standard;
  String classError;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(

          color: kBackground,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Heading1(
                  title: 'Ch-4, Moving Charges and Magnetism',
                ),
                Container(
                  height: height*0.5,
                  width: width*0.8,
                  padding: EdgeInsets.all(20),
                  child: ListView(
                    children: [
//                      DropdownButton(
//
//                        style:
//                        TextStyle(color: Colors.black, fontSize: 13),
//                        value: standard,
//                        iconEnabledColor: kPinkColor,
//                        focusColor: kPinkColor,
//                        dropdownColor: Colors.white,
//                        onChanged: (newValue) {
//                          setState(() {
//                            standard = newValue;
//                            classError = '';
//                          });
//                        },
//                        items: ,
//                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Notes',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1GMeyhEei3LWPUn5UmoWkGQJZice3sFShk?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Worksheets',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1Y2hFHGeZid4Fwlw0KrFgveqStS_2DUeI?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Worksheets solution',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1GMeyhEei3LWPUn5UmoWkGQJZice3sFShk?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Videos',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/187DOmmn7FOG0Vsryvo6Vv3DVY62SJsvB?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Self-Test',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1NBKvPsWIkv4tbGNAI86OZovqZcEywjdm?usp=sharing");
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}