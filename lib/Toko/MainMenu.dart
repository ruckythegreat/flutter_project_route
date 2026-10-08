import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'toko_controller.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final c = Get.find<TokoController>();

  @override
  Widget build(BuildContext context) {
    final a = Get.parameters;

    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
        actions: [
          IconButton(icon: Icon(Icons.logout), onPressed: c.konfirmasiLogout),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 80),
            SizedBox(height: 20),
            Text(
              'Selamat datang, ${a['username']}!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Metode Pembayaran: ${a['metode']}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
