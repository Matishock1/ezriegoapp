import 'package:ezriegoapp/models/notificaciones.dart';
import 'package:get/get.dart';

class NotificacionesController extends GetxController {
  List<Notificaciones> listaNotificaciones = [
    Notificaciones(
        id: 1,
        titulo: 'Tu contraseña ha sido actualizada con éxito',
        fecha: '5 de abril 2023 a las 15:00 hrs',
        leido: false),
    Notificaciones(
        id: 2,
        titulo: 'Has generado un nuevo reporte',
        fecha: '5 de abril 2023 a las 15:00 hrs',
        leido: false),
    Notificaciones(
        id: 3,
        titulo: 'Riego programado en Sector 1',
        fecha: '1 de abril 2023 a las 12:00 hrs',
        leido: false),
    Notificaciones(
        id: 4,
        titulo: 'Has generado un nuevo reporte',
        fecha: '1 de abril 2023 a las 12:00 hrs',
        leido: true),
    Notificaciones(
        id: 5,
        titulo: 'Nombre Usuario',
        subtitulo: 'Programó un riego para Sector 1',
        fecha: '1 de abril 2023 a las 12:00 hrs',
        leido: true)
  ];
}
