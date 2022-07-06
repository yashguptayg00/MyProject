import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/components/heading_widgets.dart';
import 'package:rakhigangwalkv3/components/listItem.dart';
import 'package:rakhigangwalkv3/constants.dart';
import 'package:url_launcher/url_launcher.dart';
class Ch1 extends StatefulWidget {
  static const id = 'ch1';

  @override
  _Ch1State createState() => _Ch1State();
}

class _Ch1State extends State<Ch1> {
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
                  title: 'Ch-1, Electric Charges and Fields',
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
                            _launchURL("https://drive.google.com/drive/folders/1gAnPak0da7-sVrhTnKnnpWRJD35Xjw8s?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Worksheets',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1SZp3KCscFhMMEt9EOCI4M1JK2iXGAFis?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Worksheets solution',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1Jm2iAh40caO0Aimfuus-HZTfV0DQqBt5?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Videos',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1ZnEJsaXLL1m-r5_XQe2bOM97mUqoMS1I?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Self-Test',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/16HTelwG6Gv0Prm93ptupM5pTX__YRzTM?usp=sharing");
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