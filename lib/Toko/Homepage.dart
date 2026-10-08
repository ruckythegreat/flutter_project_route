import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'toko_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final c = Get.put(TokoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Login Toko')),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Silakan Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 20),
            TextField(
              controller: c.usernameC,
              decoration:  InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: c.passwordC,
              decoration:  InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
             SizedBox(height: 30),
            ElevatedButton(
              onPressed: c.login,
              style: ElevatedButton.styleFrom(
                minimumSize:  Size(double.infinity, 50),
              ),
              child:  Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}