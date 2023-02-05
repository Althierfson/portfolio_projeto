import 'package:flutter/material.dart';
import 'package:portfolio_projeto/entidades/job.dart';

class Habilidades extends StatefulWidget {
  final List<Job> habilidades;
  const Habilidades({super.key, required this.habilidades});

  @override
  State<Habilidades> createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {
  late List<Job> habilidades;
  int selecionado = 0;

  @override
  void initState() {
    habilidades = widget.habilidades;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 100, bottom: 100),
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF77C159),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Habilidades",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Aqui estão algumas habilidaes e ferramentas que já tive experiência",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print("Arrow back clicado");
                setState(() {
                  selecionado >= 1 ? selecionado-- : selecionado;
                });
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 100,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            buildHabilidade(),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Arrow Forward clicado");
                setState(() {
                  selecionado < habilidades.length - 1
                      ? selecionado++
                      : selecionado;
                });
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 100,
              ),
            ),
          ],
        )
      ]),
    );
  }

  SizedBox buildHabilidade() {
    return SizedBox(
      child: Column(
        children: [
          Container(
            width: 1920 * 0.20,
            height: 1080 * 0.20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(habilidades[selecionado].capaPath))),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 400,
            child: Text(
              habilidades[selecionado].texto,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
