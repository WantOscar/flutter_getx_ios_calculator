import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_ios_calculator/src/bindings/init_binding.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'src/ui/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const App(),
      initialBinding: InitBinding(),
    );
  }
}
