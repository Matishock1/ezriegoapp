import 'package:get/get.dart';

class Manguera {
  final int id;
  final String nombre;
  final String activo;
  final RxBool switchValue;

  Manguera({
    required this.id,
    required this.nombre,
    required this.activo,
    required bool valor,
  }) : switchValue = valor.obs;
}
