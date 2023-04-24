import 'package:ezriegoapp/controllers/controllers.dart';
import 'package:get/get.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TabsController(), permanent: true);
    Get.put(ManguerasController(), permanent: true);
    Get.put(SuelosController(), permanent: true);
    Get.put(HistorialController(), permanent: true);
    Get.put(NotificacionesController(), permanent: true);
  }
}
