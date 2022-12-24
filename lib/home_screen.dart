import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('dynamicTheme'),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () =>
                    Get.snackbar('This is Title', 'This is body,this is body'),
                child: const Text('show snackbar'),
              ),
              SizedBox(height: Get.size.height * 0.02),
              ElevatedButton(
                onPressed: () => Get.bottomSheet(
                  backgroundColor: Colors.black26,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
                  SizedBox(
                    height: Get.size.height * .15,
                    width: Get.size.width,
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                height: Get.size.height * .08,
                                color: Colors.pink,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      constraints: const BoxConstraints(),
                                      padding: const EdgeInsets.all(0.0),
                                      onPressed: () {
                                        Get.changeTheme(ThemeData.light());
                                        Get.back();
                                      },
                                      icon: Icon(
                                        Icons.wb_sunny_outlined,
                                        size: Get.size.width * .05,
                                      ),
                                    ),
                                    IconButton(
                                      constraints: const BoxConstraints(),
                                      padding: const EdgeInsets.all(0.0),
                                      onPressed: () {
                                        Get.changeTheme(ThemeData.dark());
                                        Get.back();
                                      },
                                      icon: Icon(
                                        Icons.wb_sunny,
                                        size: Get.size.width * .05,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                height: Get.size.height * .08,
                                color: Colors.green,
                              ),
                            ),
                            Flexible(
                              flex: 5,
                              child: Container(
                                height: Get.size.height * .08,
                                color: Colors.orange,
                              ),
                            ),
                            Flexible(
                              child: Container(
                                height: Get.size.height * .08,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                child: const Text('show bottom sheet'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                },
                child: const Text('changeTheme'),
              ),
            ],
          ),
        ));
  }
}
