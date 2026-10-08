import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        Container(
          color: Colors.white,
          child: Wrap(
            children: [
              const ListTile(
                title: Text(
                  'Pilih Metode Pembayaran',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.account_balance),
                title: const Text('Transfer'),
                onTap: () => lanjutKeMainMenu(username, 'Transfer'),
              ),
              ListTile(
                leading: const Icon(Icons.account_balance_wallet),
                title: const Text('E-Wallet'),
                onTap: () => lanjutKeMainMenu(username, 'E-Wallet'),
              ),
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text('COD'),
                onTap: () => lanjutKeMainMenu(username, 'COD'),
              ),
            ],
          ),
        ),
      );
    } else {

      Get.snackbar(
        'Login Gagal',
        'Username atau password salah!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void lanjutKeMainMenu(String username, String metode) {
    Get.back();
    Get.offNamed('/toko-mainmenu', arguments: {
      'username': username,
      'metode': metode,
    });
  }

  void logout() {

    Get.defaultDialog(
      title: 'Konfirmasi',
      middleText: 'Apakah Anda yakin ingin keluar?',
      textConfirm: 'Ya, Keluar',
      textCancel: 'Batal',
      confirmTextColor: Colors.white,
      onConfirm: () {
        usernameC.clear();
        passwordC.clear();
        Get.offAllNamed('/toko-home');
      },
    );
  }
}