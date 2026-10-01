import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bmi_controller.dart';

class InputBmiPage extends StatefulWidget {
  const InputBmiPage({super.key});

  @override
  State<InputBmiPage> createState() => _InputBmiPageState();
}

class _InputBmiPageState extends State<InputBmiPage> {

  final NC = TextEditingController();
  final BC = TextEditingController();
  final TC = TextEditingController();

  final BmiController controller = Get.put(BmiController());

  void prosesHitung() {

    String nama = NC.text;
    double? berat = double.tryParse(BC.text);
    double? tinggi = double.tryParse(TC.text);

    if (nama.isEmpty || berat == null || tinggi == null) {
      Get.snackbar('Error', 'Harap isi semua data dengan angka yang benar');
      return;
    }

    double bmi = controller.hitungBMI(berat, tinggi);
    String kategori = controller.dapatkanKategori(bmi);

    Get.offNamed(
      '/hasil-bmi',
      arguments: {'nama': nama, 'bmi': bmi, 'kategori': kategori},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input BMI')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: NC,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: BC,
              decoration: const InputDecoration(labelText: 'Berat (kg)'),
            ),
            TextField(
              controller: TC,
              decoration: const InputDecoration(labelText: 'Tinggi (cm)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: prosesHitung,
              child: const Text('Hitung'),
            ),
          ],
        ),
      ),
    );
  }
}
