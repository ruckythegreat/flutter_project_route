import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bmi_controller.dart';

class InputBmiPage extends StatelessWidget {
  InputBmiPage({super.key});

  final controller = Get.put(BmiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input BMI')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.namaC,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: controller.beratC,
              keyboardType: TextInputType.number, // Membantu memunculkan keyboard angka
              decoration: InputDecoration(labelText: 'Berat (kg)'),
            ),
            TextField(
              controller: controller.tinggiC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tinggi (cm)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.prosesHitung,
              child: const Text('Hitung'),
            ),
          ],
        ),
      ),
    );
  }
}