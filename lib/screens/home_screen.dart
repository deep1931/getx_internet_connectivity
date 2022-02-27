import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internet_connectivity/getx/connection_manager_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ConnectionManagerController _controller =
        Get.find<ConnectionManagerController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Connection Check Using Getx'),
      ),
      body: Center(
        child: Obx(() => Text(
              _controller.connectionType.value == 1
                  ? "Wifi Connected"
                  : _controller.connectionType.value == 2
                      ? 'Mobile Data Connected'
                      : 'No Internet',
              style: const TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
