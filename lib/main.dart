import 'package:flutter/material.dart';
import 'package:flutter_app/convert_image.dart';
import 'package:flutter_app/upload_profile_image.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const ConvertImage(),
    );
  }
}
