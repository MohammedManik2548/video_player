import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/home_page_controller.dart';

class MyHomePage extends StatelessWidget {
  var controller = Get.put(HomePageController());
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Videio Player'),
      ),
      body: Container(),
    );
  }
}
