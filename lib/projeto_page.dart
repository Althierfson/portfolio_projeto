import 'package:flutter/material.dart';
import 'package:portfolio_projeto/entidades/job.dart';

class ProjetoPage extends StatelessWidget {
  final Job projeto;
  const ProjetoPage({super.key, required this.projeto});

  @override
  Widget build(BuildContext context) {
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
                    child: Text(
                      projeto.texto,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 20),
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
}
