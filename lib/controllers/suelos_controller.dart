import 'package:get/get.dart';

import '../models/models.dart';

class SuelosController extends GetxController {
  List<Suelo> listaSuelos = [
    Suelo(id: 1, nombre: 'Sector 1', humedad: '20', temperatura: '15'),
    Suelo(id: 1, nombre: 'Sector 2', humedad: '20', temperatura: '15'),
    Suelo(id: 1, nombre: 'Sector 3', humedad: '20', temperatura: '15'),
  ];
}
