import 'package:flutter/material.dart';
import '../componentes/tela_detalhes/cabecalho_detalhes.dart';
import '../componentes/tela_detalhes/resumo_disciplina.dart';
import '../componentes/tela_detalhes/seletor_abas_detalhes.dart';
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
      backgroundColor: const Color(0xFFF7F9FC),
      body: SafeArea(
        child: Column(
          children: [
            // Parte Superior (Fixa)
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  CabecalhoDetalhes(titulo: widget.nomeDisciplina),
                  const SizedBox(height: 24),
                  const ResumoDisciplina(),
                  const SizedBox(height: 24),
                  SeletorAbasDetalhes(
                    indiceAtual: _abaSelecionada,
                    aoClicar: (index) =>
                        setState(() => _abaSelecionada = index),
                  ),
                ],
              ),
            ),

            // Parte Inferior (Conteúdo Rolável)
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
    switch (_abaSelecionada) {
      case 0:
        return const AbaNotas();
      case 1:
        return const AbaAtividades();
      default:
        return const AbaNotas();
    }
  }
}
