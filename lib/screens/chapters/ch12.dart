import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/components/heading_widgets.dart';
import 'package:rakhigangwalkv3/components/listItem.dart';
import 'package:rakhigangwalkv3/constants.dart';
import 'package:url_launcher/url_launcher.dart';
class Ch12 extends StatefulWidget {
  static const id = 'ch12';

  @override
  _Ch12State createState() => _Ch12State();
}

class _Ch12State extends State<Ch12> {
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
                  title: 'Ch-12, Atoms',
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
                            _launchURL("https://drive.google.com/drive/folders/1B5u7HS7DfkxrQjw_p3rdJK7FX3xn4on1?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Worksheets solution',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1l6ie7U4E47xfKluLLBk-SYCFH45GgXd4?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Videos',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1GMeyhEei3LWPUn5UmoWkGQJZice3sFShk?usp=sharing");
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Self-Test',
                          onTap: (){
                            _launchURL("https://drive.google.com/drive/folders/1_w_1wlV2J_v3Zt_QoDq7L5F92uGc7qk2?usp=sharing");
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