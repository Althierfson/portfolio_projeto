class Job {
  final String titulo;
  final String texto;
  final String capaPath;
  final List<String> assets;

  Job(
      {required this.titulo,
      required this.texto,
      required this.capaPath,
      this.assets = const <String>[]});
}
