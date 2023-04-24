import 'package:get/get.dart';

import '../models/models.dart';

class HistorialController extends GetxController {
  List<Historial> listaHistorial = [
    Historial(
        id: 1,
        titulo: 'Activar Llave 1',
        estado: 'Activada',
        hora: '09:00',
        userLog: 'Por Usuario desde Menú'),
    Historial(
        id: 2,
        titulo: 'Reporte sector 1 ',
        estado: 'Generar reporte',
        hora: '08:30',
        userLog: 'Por Usuario desde Menú'),
    Historial(
        id: 3,
        titulo: 'Desactivar Llave 1',
        estado: 'Desconectada',
        hora: '20:00',
        userLog: 'Por Usuario desde Menú'),
    Historial(
        id: 4,
        titulo: 'Activar Llave 1',
        estado: 'Activada',
        hora: '19:00',
        userLog: 'Por Usuario desde Menú'),
    Historial(
        id: 5,
        titulo: 'Activar Llave 1',
        estado: 'Activada',
        hora: '19:00',
        userLog: 'Por Usuario desde Menú'),
  ];
}
