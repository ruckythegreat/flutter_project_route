import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'toko_controller.dart';

class PembayaranPage extends StatelessWidget {
   PembayaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Pembayaran')),
      body:  Center(
        child: Text('Halaman Pembayaran'),
      ),
    );
  }
}

class MetodeBayarSheet extends StatelessWidget {
  MetodeBayarSheet({super.key});

  final c = Get.find<TokoController>();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ListTile(
          leading:  Icon(Icons.credit_card),
          title:  Text('Transfer'),
          onTap: () => c.lanjutKeMainMenu('Transfer'),
        ),
        ListTile(
          leading:  Icon(Icons.account_balance_wallet),
          title:  Text('E-Wallet'),
          onTap: () => c.lanjutKeMainMenu('E-Wallet'),
        ),
        ListTile(
          leading:  Icon(Icons.money),
          title:  Text('COD'),
          onTap: () => c.lanjutKeMainMenu('COD'),
        ),
      ],
    );
  }
}