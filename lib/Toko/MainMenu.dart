import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'toko_controller.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  // Mengambil controller yang sudah diinisialisasi di halaman login
  final c = Get.find<TokoController>(); 

  @override
  Widget build(BuildContext context) {
    // Menangkap data (username & metode) yang dikirim dari TokoController
    final arg = Get.arguments ?? {'username': 'Tamu', 'metode': 'Belum dipilih'};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: c.logout, // Memanggil fungsi logout
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 80),
            const SizedBox(height: 20),
            Text(
              'Selamat datang, ${arg['username']}!',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Metode Pembayaran: ${arg['metode']}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}