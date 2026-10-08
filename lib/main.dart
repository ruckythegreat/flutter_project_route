import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart' as home;
import 'BMI/input_bmi.dart';
import 'BMI/hasil_bmi.dart';
import 'Toko/Homepage.dart' as Toko;
import 'Toko/Pembayaran.dart';
import 'Toko/MainMenu.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator BMI',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => home.HomePage()),
        GetPage(name: '/input-bmi', page: () => InputBmiPage()),
        GetPage(name: '/hasil-bmi', page: () => HasilBmiPage()),
        GetPage(name: '/toko-home', page: () => Toko.HomePage()),
        GetPage(name: '/toko-pembayaran', page: () =>  PembayaranPage()),
        GetPage(name: '/toko-mainmenu', page: () => MainMenuPage()),
      ],
    );
  }
}