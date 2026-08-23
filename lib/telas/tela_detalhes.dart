import 'package:flutter/material.dart';
import '../tema/cores.dart';
import '../componentes/comuns/seletor_abas.dart';
import '../componentes/tela_detalhes/cabecalho_detalhes.dart';
import '../componentes/tela_detalhes/resumo_disciplina.dart';
import '../componentes/tela_detalhes/aba_notas.dart';
import '../componentes/tela_detalhes/aba_atividades.dart';

class TelaDetalhesDisciplina extends StatefulWidget {
  final String nomeDisciplina;
  const TelaDetalhesDisciplina({super.key, required this.nomeDisciplina});

  @override
  State<TelaDetalhesDisciplina> createState() => _TelaDetalhesDisciplinaState();
}

class _TelaDetalhesDisciplinaState extends State<TelaDetalhesDisciplina> {
  int _abaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.fundo,
      body: SafeArea(
        child: Column(
          children: [
            // Cabeçalho e resumo ficam fixos no topo.
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  CabecalhoDetalhes(titulo: widget.nomeDisciplina),
                  const SizedBox(height: 24),
                  const ResumoDisciplina(),
                  const SizedBox(height: 24),
                  SeletorAbas(
                    abas: const ['Notas', 'Atividades (Moodle)'],
                    indiceAtual: _abaSelecionada,
                    aoSelecionar: (indice) =>
                        setState(() => _abaSelecionada = indice),
                    corFundo: AppCores.roxoClaro.withValues(alpha: 0.5),
                    comSombra: false,
                    tamanhoFonte: 12,
                  ),
                ],
              ),
            ),
            // Apenas o conteúdo da aba rola.
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: _construirConteudoAba(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _construirConteudoAba() {
    return _abaSelecionada == 1 ? const AbaAtividades() : const AbaNotas();
  }
}
