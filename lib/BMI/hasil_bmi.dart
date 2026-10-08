import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HasilBmiPage extends StatelessWidget {
   HasilBmiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments ?? {};
    final nama = args['nama'] ?? '-';
    final bmi = args['bmi'] ?? 0.0;
    final kategori = args['kategori'] ?? '-';

    return Scaffold(
      appBar: AppBar(title:  Text('Hasil BMI')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nama: $nama', style:  TextStyle(fontSize: 20)),
            Text(
              'Nilai BMI: ${bmi.toStringAsFixed(1)}',
              style:  TextStyle(fontSize: 24),
            ),
            Text('Kategori: $kategori', style:  TextStyle(fontSize: 20)),
             SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Get.offAllNamed('/');
              },
              child:  Text('Kembali ke Home'),
            ),
          ],
        ),
      ),
    );
  }
}
