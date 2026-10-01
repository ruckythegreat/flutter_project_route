import 'package:get/get.dart';

class BmiController extends GetxController {
  double hitungBMI(double beratKg, double tinggiCm) {
    double tinggiMeter = tinggiCm / 100;

    return beratKg / (tinggiMeter * tinggiMeter);
  }

  String dapatkanKategori(double bmi) {
    if (bmi < 18.5) {
      return 'Berat badan kurang';
    } else if (bmi <= 24.9) {
      return 'Rentang normal';
    } else if (bmi <= 29.9) {
      return 'Berat badan berlebih';
    } else {
      return 'Obesitas';
    }
  }
}
