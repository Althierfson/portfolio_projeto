import 'package:portfolio_projeto/entidades/job.dart';
import 'package:portfolio_projeto/fontes/habilidades.dart';
import 'package:portfolio_projeto/fontes/outros_projetos.dart';

import 'package:portfolio_projeto/fontes/projetos_ti.dart';

class ReadProjetos {
  List<Job> returnJobs(TipoProjeto tipoProjeto) {
    if (tipoProjeto == TiposDeProjeto.projetosTI) {
      return projetosTi;
    }

    if (tipoProjeto == TiposDeProjeto.outrosProjetos) {
      return outrosProjetos;
    }

    if (tipoProjeto == TiposDeProjeto.habilidades) {
      return habilidades;
    }

    return [];
  }
}

class TipoProjeto {
  final String tipo;

  TipoProjeto(this.tipo);

  @override
  bool operator ==(Object other) {
    if (other is TipoProjeto && other.runtimeType == runtimeType) {
      if (other.hashCode == hashCode) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  @override
  int get hashCode => tipo.hashCode;
}

class TiposDeProjeto {
  static TipoProjeto projetosTI = TipoProjeto("ProjetosTI");
  static TipoProjeto outrosProjetos = TipoProjeto("OutrosProjetos");
  static TipoProjeto habilidades = TipoProjeto("Habilidades");
}
