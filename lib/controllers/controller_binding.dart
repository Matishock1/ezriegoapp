import 'package:ezriegoapp/controllers/controllers.dart';
import 'package:get/get.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TabsController(), permanent: true);
  }
}
