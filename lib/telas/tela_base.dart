import 'package:flutter/material.dart';
import '../tema/cores.dart';
import '../componentes/barra_navegacao.dart';
import 'tela_inicial.dart';
import 'tela_atividades.dart';
import 'tela_desempenho.dart';
import 'tela_perfil.dart';

/// Casca do app: mantém o índice da aba atual e troca o conteúdo do `body`
/// conforme a [BarraNavegacao] inferior.
class TelaBase extends StatefulWidget {
  const TelaBase({super.key});

  @override
  State<TelaBase> createState() => _TelaBaseState();
}

class _TelaBaseState extends State<TelaBase> {
  int _indiceAtual = 0;

  static const List<Widget> _telas = [
    TelaInicial(),
    TelaAtividades(),
    TelaDesempenho(),
    TelaPerfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.fundo,
      body: _telas[_indiceAtual],
      bottomNavigationBar: BarraNavegacao(
        indiceAtual: _indiceAtual,
        aoClicar: (novoIndice) => setState(() => _indiceAtual = novoIndice),
      ),
    );
  }
}
