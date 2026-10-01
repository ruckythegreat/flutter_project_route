import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Get.toNamed('/input-bmi');
              },
              child: const Text('Input Bmi'),
            ),
          ],
        ),
      ),
    );
  }
}
