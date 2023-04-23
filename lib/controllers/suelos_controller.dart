import 'package:get/get.dart';

import '../models/models.dart';

class SuelosController extends GetxController {
  final RxInt _botonSeleccionado = 0.obs;
  final RxBool _avanzado = false.obs;
  final RxBool _duracion = false.obs;

  bool get avanzado => _avanzado.value;
  bool get duracion => _duracion.value;

  set avanzado(bool value) {
    _avanzado.value = value;
    update();
  }

  set duracion(bool value) {
    _duracion.value = value;
    update();
  }

  int get botonSeleccionado => _botonSeleccionado.value;

  set botonSeleccionado(int value) {
    _botonSeleccionado.value = value;
    update();
  }

  List<Suelo> listaSuelos = [
    Suelo(id: 1, nombre: 'Sector 1', humedad: '20', temperatura: '15'),
    Suelo(id: 1, nombre: 'Sector 2', humedad: '20', temperatura: '15'),
    Suelo(id: 1, nombre: 'Sector 3', humedad: '20', temperatura: '15'),
  ];
}
