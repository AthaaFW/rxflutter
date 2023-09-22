import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxatha/home.dart';
import 'package:rxatha/insertMapel.dart';
import 'package:rxatha/insertSiswa.dart';
import 'package:rxatha/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/sec',
      getPages: [
        GetPage(name: '/', page: ()=> MyApp()),
        GetPage(name: '/sec', page: ()=> Second()),
        GetPage(name: '/ins', page: ()=> insertSiswa()),
        GetPage(name: '/inm', page: ()=> insertMapel()),
      ],
      home: Home(),
    );
  }
}

