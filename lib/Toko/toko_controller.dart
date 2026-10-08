import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Pembayaran.dart';

class TokoController extends GetxController {
  final usernameC = TextEditingController();
  final passwordC = TextEditingController();

  @override
  void onClose() {
    usernameC.dispose();
    passwordC.dispose();
    super.onClose();
  }

  void login() {
    String username = usernameC.text;
    String password = passwordC.text;

    if (username == 'NAgi' && password == 'Raka') {
      Get.bottomSheet(
        MetodeBayarSheet(),
        backgroundColor: Colors.white,
      );
    } else {
      Get.snackbar(
        'Login Gagal',
        'Password salah',
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  void lanjutKeMainMenu(String metode) {
    Get.back();
    Get.offNamed('/toko-mainmenu', arguments: {
      'username': usernameC.text,
      'metode': metode,
    });
  }

  void konfirmasiLogout() {
    Get.defaultDialog(
      title: 'Keluar',
      middleText: 'Yakin?',
      onConfirm: logout,
    );
  }

  void logout() {
    Get.offAllNamed('/toko-home');
  }
}