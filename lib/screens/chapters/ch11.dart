import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/components/heading_widgets.dart';
import 'package:rakhigangwalkv3/components/listItem.dart';
import 'package:rakhigangwalkv3/constants.dart';
import 'package:url_launcher/url_launcher.dart';
class Ch11 extends StatefulWidget {
  static const id = 'ch11';

  @override
  _Ch11State createState() => _Ch11State();
}

class _Ch11State extends State<Ch11> {
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
                  title: 'Ch-11, Dual Nature of Radiation and Matter',
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
                            _launchURL("https://drive.google.com/drive/folders/1H_deHgmoEyniHeEg9YVwN4FDjnyoj4Jc?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Worksheets',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1F-QeW9P8Y0eE_IJHfiTa2GnewdRVG-Cw?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Worksheets solution',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1sXn6EPI7C10kQdsZiZ1R7DEw0-a4JadM?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Videos',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1AUBqwPsu7LlNtEQO9RwifyUlJXNj9qqw?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Self-Test',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/151pAj77Go2JjINOfJU535M-0BPbfHneI?usp=sharing");
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