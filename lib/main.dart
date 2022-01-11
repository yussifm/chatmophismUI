// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:chatmophism/screens/chat_page/chat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatmophism',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber[800],
        primaryColorLight: Colors.grey[100],
        backgroundColor: Colors.grey[100],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.oswald(
          color: Colors.black
        ).fontFamily,
      ),
      
      home: HomeView(),
    );
  }
}

