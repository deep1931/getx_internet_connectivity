import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internet_connectivity/getx/controller_binding.dart';
import 'package:getx_internet_connectivity/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinding(),

      title: 'Internet Connectivity Check (Using Getx)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
