import 'package:flutter_getx_ios_calculator/src/controller/calculator_controller.dart';
import 'package:get/instance_manager.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CalculatorController(), permanent: true);
  }
}
