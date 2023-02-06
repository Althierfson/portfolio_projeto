import 'package:portfolio_projeto/entidades/links.dart';

class Job {
  final String titulo;
  final String texto;
  final String capaPath;
  final List<String> assets;
  final List<Link> links;

  Job(
      {required this.titulo,
      required this.texto,
      required this.capaPath,
      this.assets = const <String>[],
      this.links = const <Link>[]});
}
