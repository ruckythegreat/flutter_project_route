import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HasilBmiPage extends StatelessWidget {
  const HasilBmiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments ?? {};
    final nama = args['nama'] ?? '-';
    final bmi = args['bmi'] ?? 0.0;
    final kategori = args['kategori'] ?? '-';

    return Scaffold(
      appBar: AppBar(title: const Text('Hasil BMI')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nama: $nama', style: const TextStyle(fontSize: 20)),
            Text(
              'Nilai BMI: ${bmi.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 24),
            ),
            Text('Kategori: $kategori', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Get.offAllNamed('/');
              },
              child: const Text('Kembali ke Home'),
            ),
          ],
        ),
      ),
    );
  }
}
