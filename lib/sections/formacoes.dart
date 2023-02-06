import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Minhas Formações",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                formacaoTile(
                    "Bacharel Em ciência da Computação", "UERN - 2020"),
                const SizedBox(
                  width: 20,
                ),
                formacaoTile("Pos-Graduação em Tecnologia da Informação",
                    "UFRN - Em Progresso"),
              ],
            )
          ]),
    );
  }

  SizedBox formacaoTile(String form, String base) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.school,
            size: 80,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                form,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              Text(
                base,
              )
            ],
          )
        ],
      ),
    );
  }
}
