import 'package:get/get.dart';
import 'package:getx_internet_connectivity/getx/connection_manager_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnectionManagerController>(
        () => ConnectionManagerController());
  }
}
