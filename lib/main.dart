import 'package:flutter/material.dart';
import 'package:flutter_practice/controller/api_controller.dart';
import 'package:flutter_practice/view/task/api_login.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final api = Get.put(ControllerApi());
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginApi(),
    );
  }
}
