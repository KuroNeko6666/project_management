import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05,
            vertical: Get.width * 0.1,
          ),
          child: Column(
            children: [
              Container(
                height: Get.height * 0.4,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              splashRadius: Get.width * 0.05,
                              icon: Icon(Icons.menu),
                            ),
                            Container(
                              height: Get.width * 0.1,
                              width: Get.width * 0.1,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(Get.width),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: Get.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Halo,',
                              style: TextStyle(
                                fontSize: Get.width * 0.06,
                              ),
                            ),
                            SizedBox(
                              height: Get.width * 0.03,
                            ),
                            Text(
                              'AGUNG PRIYATNO',
                              style: TextStyle(
                                fontSize: Get.width * 0.08,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: Get.width * 0.04),
                          height: Get.width * 0.15,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              Get.width * 0.03,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                color: Color.fromARGB(255, 201, 201, 201),
                                blurRadius: Get.width * 0.05,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Search',
                              suffixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: Get.width,
                height: Get.height * 0.3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: Get.height,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(Get.width * 0.03),
                        ),
                      ),
                      SizedBox(width: Get.width * 0.02),
                      Container(
                        height: Get.height,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(Get.width * 0.03),
                        ),
                      ),
                      SizedBox(width: Get.width * 0.02),
                      Container(
                        height: Get.height,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(Get.width * 0.03),
                        ),
                      ),
                      SizedBox(width: Get.width * 0.02),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: Get.height * 0.08,
        width: Get.width,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: Get.width * 0.08,
            ),
            Icon(
              Icons.chat,
              color: Colors.white,
              size: Get.width * 0.08,
            ),
            Icon(
              Icons.calendar_today,
              color: Colors.white,
              size: Get.width * 0.08,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: Get.width * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
