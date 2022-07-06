import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/components/heading_widgets.dart';
import 'package:rakhigangwalkv3/constants.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch1.dart';
import 'package:rakhigangwalkv3/components/listItem.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch11.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch12.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch2.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch3.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch4.dart';
import 'package:rakhigangwalkv3/screens/chapters/sampleChapter.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'home screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

//          image: DecorationImage(
//              fit: BoxFit.fill,
//              image: AssetImage(
//                  'Assets/Images/james-barker-RKK_nvoOJ6Y-unsplash.jpg')),
          color: kBackground,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Heading1(
                  title: 'Class XII',
                ),
                Container(
                  height: height*0.8,
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
                          title: 'Ch-1, Electric Charges and Fields',
                          onTap: (){
                            Navigator.pushNamed(context, Ch1.id);
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Ch-2, Electrostatic Potential and Capacitance',
                          onTap: (){
                            Navigator.pushNamed(context, Ch2.id);
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Ch-3, Current Electricity',
                          onTap: (){
                            Navigator.pushNamed(context, Ch3.id);
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Ch-4, Moving Charges and Magnetism',
                          onTap: (){
                           Navigator.pushNamed(context, Ch4.id);
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Ch-11, Dual Nature of Radiation and Matter',
                          onTap: (){
                            Navigator.pushNamed(context, Ch11.id);
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Ch-12, Atoms',
                          onTap: (){
                            Navigator.pushNamed(context, Ch12.id);
                          },
                        ),
                      ),
                      GestureDetector(
                        child: ListItem
                          (
                          title: 'Ch-13, Nuclei',
                          onTap: (){
                            Navigator.pushNamed(context, Ch13.id);
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
