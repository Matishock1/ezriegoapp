//Para implementar el historial es necesario tener una lista de dias,
// los cuales tengan una lista de notificaciones con horas.

class Historial {
  final int id;
  final String titulo;
  final String estado;
  final String hora;

  final String userLog;

  Historial({
    required this.id,
    required this.titulo,
    required this.estado,
    required this.hora,
    required this.userLog,
  });
}
