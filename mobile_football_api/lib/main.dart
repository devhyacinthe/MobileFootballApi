import 'package:flutter/material.dart';
import 'package:mobile_football_api/screen/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Football Api',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
