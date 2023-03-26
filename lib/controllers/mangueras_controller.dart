import 'package:get/get.dart';

import '../models/models.dart';

class ManguerasController extends GetxController {
  List<Manguera> listaMangueras = [
    Manguera(id: 1, nombre: 'Llave 1', activo: 'Hace 5 min.', valor: true),
    Manguera(id: 2, nombre: 'Llave 2', activo: 'Hace 5 min.', valor: false),
    Manguera(id: 3, nombre: 'Llave 3', activo: 'Hace 1 hr.', valor: true)
  ];

  actualizaLista() {
    listaMangueras[1].switchValue.value == true;
    update();
  }
}
