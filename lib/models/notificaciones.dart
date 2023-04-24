class Notificaciones {
  final int id;
  final String titulo;
  final String? subtitulo;
  final String fecha;

  final bool leido;

  Notificaciones({
    required this.id,
    required this.titulo,
    subtitulo,
    required this.fecha,
    required this.leido,
  }) : subtitulo = subtitulo ?? '';
}
