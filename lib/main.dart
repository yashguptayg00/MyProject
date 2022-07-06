import 'package:flutter/material.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch1.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch11.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch12.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch13.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch2.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch3.dart';
import 'package:rakhigangwalkv3/screens/chapters/ch4.dart';
import 'package:rakhigangwalkv3/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id:(context)=> HomeScreen(),
          Ch1.id:(context)=> Ch1(),
          Ch2.id:(context)=> Ch2(),
          Ch3.id:(context)=> Ch3(),
          Ch4.id:(context)=> Ch4(),
          Ch11.id:(context)=>Ch11(),
          Ch12.id:(context)=>Ch12(),
          Ch13.id:(context)=>Ch13()
        },
    );
  }
}
