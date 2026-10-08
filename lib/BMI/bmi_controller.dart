import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController {
  // Pindahkan controller text ke sini agar UI benar-benar stateless
  final namaC = TextEditingController();
  final beratC = TextEditingController();
  final tinggiC = TextEditingController();

  @override
  void onClose() {
    namaC.dispose();
    beratC.dispose();
    tinggiC.dispose();
    super.onClose();
  }

  void prosesHitung() {
    String nama = namaC.text;
    double? berat = double.tryParse(beratC.text);
    double? tinggi = double.tryParse(tinggiC.text);

    if (nama.isEmpty || berat == null || tinggi == null) {
      Get.snackbar('Error', 'Harap isi semua data dengan angka yang benar');
      return;
    }

    double tinggiMeter = tinggi / 100;
    double bmi = berat / (tinggiMeter * tinggiMeter);
    
    Get.offNamed(
      '/hasil-bmi',
      arguments: {'nama': nama, 'bmi': bmi, 'kategori': dapatkanKategori(bmi)},
    );
  }

  String dapatkanKategori(double bmi) {
    if (bmi < 18.5) return 'Berat badan kurang';
    if (bmi <= 24.9) return 'Rentang normal';
    if (bmi <= 29.9) return 'Berat badan berlebih';
    return 'Obesitas';
  }
}