import 'package:flutter/material.dart';
import 'package:secondproject/AboutPage.dart';
import 'package:secondproject/HomeSlideShowPage.dart';
import 'package:secondproject/LoginPage.dart';
import 'package:secondproject/VideoDetailsPage.dart';
import 'package:secondproject/VideosPage.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'videos',
    routes: {
      'login' : (context)=>LoginPage(),
      'home' : (context)=>HomePage(),
      'about' : (context)=>AboutPage(),
      'videos' : (context)=>VideosPage(),
      'video details' : (context)=>VideoDetailsPage(),

    },
  ));
}

