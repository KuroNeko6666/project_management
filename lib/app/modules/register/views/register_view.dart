import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_management/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.1, vertical: Get.width * 0.20),
          alignment: Alignment.center,
          height: Get.height,
          width: Get.width,
          color: Colors.blue,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: Get.width * 0.15,
                              width: Get.width * 0.15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Get.width * 0.025),
                              ),
                              child: Icon(
                                Icons.admin_panel_settings,
                                size: Get.width * 0.1,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'DAFTAR',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.width * 0.06,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Silahkan isi form dengan data asli',
                                  style: TextStyle(
                                    fontSize: Get.width * 0.04,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        width: Get.width,
                        padding: EdgeInsets.all(Get.width * 0.05),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Get.width * 0.025),
                        ),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: Get.width,
                                height: Get.width * 0.12,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nama',
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.blue,
                                      )),
                                ),
                              ),
                              SizedBox(height: Get.width * 0.03),
                              SizedBox(
                                width: Get.width,
                                height: Get.width * 0.12,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Email',
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.blue,
                                      )),
                                ),
                              ),
                              SizedBox(height: Get.width * 0.03),
                              SizedBox(
                                width: Get.width,
                                height: Get.width * 0.12,
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: Get.width * 0.05),
                              SizedBox(
                                width: Get.width,
                                height: Get.width * 0.1,
                                child: ElevatedButton(
                                  onPressed: () => Get.toNamed(Routes.AUTH),
                                  child: Text('Daftar'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.width * 0.1),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () => Get.back(),
                    child: Text(
                      'Kembali',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
