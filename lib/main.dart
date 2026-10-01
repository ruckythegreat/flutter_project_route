import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'BMI/home.dart';
import 'BMI/input_bmi.dart';
import 'BMI/hasil_bmi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator BMI',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/input-bmi', page: () => const InputBmiPage()),
        GetPage(name: '/hasil-bmi', page: () => const HasilBmiPage()),
      ],
    );
  }
}