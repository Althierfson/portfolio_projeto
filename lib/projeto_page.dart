import 'package:flutter/material.dart';
import 'package:portfolio_projeto/src/utils/check_dispositivo.dart';
import 'package:portfolio_projeto/src/entidades/job.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjetoPage extends StatelessWidget {
  final Job projeto;
  const ProjetoPage({super.key, required this.projeto});

  @override
  Widget build(BuildContext context) {
    if (CheckDispositivo.isMobile) {
      return buildSectionToPhone(context);
    } else {
      return buildSection(context);
    }
  }

  Scaffold buildSection(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      image: AssetImage(
                        projeto.capaPath,
                      ),
                    )),
                child: Text(
                  projeto.titulo,
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Column(
                      children: [
                        Text(
                          projeto.texto,
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 100,
                          child: ListView.builder(
                            itemCount: projeto.links.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(5),
                                child: TextButton(
                                  child: Text(
                                    projeto.links[index].nome,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  onPressed: () {
                                    launchUrl(
                                        Uri.parse(projeto.links[index].url));
                                  },
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.separated(
                      itemCount: projeto.assets.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.30,
                          height: MediaQuery.of(context).size.height * 0.50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(projeto.assets[index]),
                                  // ! Adciona uma função para aumentar a imagem quando ela for clicada
                                  fit: BoxFit.contain)),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        height: 10,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Scaffold buildSectionToPhone(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      image: AssetImage(
                        projeto.capaPath,
                      ),
                    )),
                child: Text(
                  projeto.titulo,
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Text(
                  projeto.texto,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      projeto.assets.length,
                      (index) => Container(
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: MediaQuery.of(context).size.height * 0.70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(projeto.assets[index]),
                                    // ! Adciona uma função para aumentar a imagem quando ela for clicada
                                    fit: BoxFit.contain)),
                          )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    projeto.links.length,
                    (index) => TextButton(
                      child: Text(
                        projeto.links[index].nome,
                        style: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(projeto.links[index].url));
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
