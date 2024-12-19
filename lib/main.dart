import 'package:flutter/material.dart';
import 'package:youssef_store/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyWidget());
}

// ignore: must_be_immutable
class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  TextEditingController UserName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme)), 
      
      
      
      home:const HomeScareen()
    )
  ;
  }
}
