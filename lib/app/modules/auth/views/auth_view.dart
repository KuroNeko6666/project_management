import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_management/app/routes/app_pages.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.1, vertical: Get.width * 0.6),
        alignment: Alignment.center,
        height: Get.height,
        width: Get.width,
        color: Colors.blue,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: Get.width * 0.2,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Get.width * 0.025),
                    ),
                    child: Icon(
                      Icons.admin_panel_settings,
                      size: Get.width * 0.15,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: Get.width * 0.03),
                  Text(
                    'LOGO APLIKASI',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.04,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.width * 0.1),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                width: Get.width,
                padding: EdgeInsets.all(Get.width * 0.05),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Get.width * 0.025),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Selamat datang di Aplikasi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.06,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      'Pilih salah satu untuk melanjutkan',
                      style: TextStyle(
                        fontSize: Get.width * 0.04,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: Get.width * 0.1),
                    SizedBox(
                      width: Get.width,
                      height: Get.width * 0.1,
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.LOGIN),
                        child: Text('Masuk'),
                      ),
                    ),
                    SizedBox(height: Get.width * 0.03),
                    SizedBox(
                      width: Get.width,
                      height: Get.width * 0.1,
                      child: OutlinedButton(
                        onPressed: () => Get.toNamed(Routes.REGISTER),
                        child: Text('Daftar'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
