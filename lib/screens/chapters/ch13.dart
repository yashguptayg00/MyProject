import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/components/heading_widgets.dart';
import 'package:rakhigangwalkv3/components/listItem.dart';
import 'package:rakhigangwalkv3/constants.dart';
import 'package:url_launcher/url_launcher.dart';
class Ch13 extends StatefulWidget {
  static const id = 'ch13';

  @override
  _Ch13State createState() => _Ch13State();
}

class _Ch13State extends State<Ch13> {
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
                  title: 'Ch-13, Nuclei',
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
                            _launchURL("https://drive.google.com/drive/folders/1TXJHCy4qHgKsP_Pt2Wm-yhWDoc4qpEKc?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Worksheets solution',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/19COXEfMAZQs6nQ4FTxnLXpVHQ1BhsuT-?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Videos',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1iSlaMDKDyp7cp-jjQNOSMlwj3PLRj8QJ?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Self-Test',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1S-wHYSbNwo3RSyiyJPWy7RUHg1FISt-o?usp=sharing");
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