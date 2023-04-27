import 'package:flutter/material.dart';
import 'package:portfolio_projeto/check_dispositivo.dart';

class Formacao extends StatelessWidget {
  const Formacao({super.key});

  @override
  Widget build(BuildContext context) {
    if (CheckDispositivo.isMobile) {
      return buildSectionToPhone(context);
    } else {
      return buildSection(context);
    }
  }

  Widget buildSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
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
                formacaoTile(
                    "Especialista em Tecnologia da Informação", "UFRN - 2023"),
              ],
            )
          ]),
    );
  }

  Widget buildSectionToPhone(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Minhas Formações",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 30,
          ),
          formacaoTileToPhone(
              "Bacharel Em ciência da Computação", "UERN - 2020"),
          const SizedBox(
            height: 20,
          ),
          formacaoTileToPhone(
              "Especialista em Tecnologia da Informação", "UFRN - 2023"),
        ],
      ),
    );
  }

  Widget formacaoTile(String form, String base) {
    return Row(
      children: [
        const Icon(
          Icons.school,
          size: 80,
          color: Colors.black,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              form,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            Text(
              base,
            )
          ],
        )
      ],
    );
  }

  Widget formacaoTileToPhone(String form, String base) {
    return ListTile(
      leading: const Icon(
        Icons.school,
        size: 80,
        color: Colors.black,
      ),
      title: Text(
        form,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
      ),
      subtitle: Text(
        base,
      ),
    );
  }
}
