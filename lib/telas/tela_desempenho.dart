import 'package:flutter/material.dart';
import '../componentes/tela_desempenho/cabecalho_desempenho.dart';
import '../componentes/tela_desempenho/card_visao_geral.dart';
import '../componentes/tela_desempenho/seletor_visualizacao.dart';
import '../componentes/tela_desempenho/lista_disciplinas.dart';
import '../componentes/tela_desempenho/aba_frequencia.dart';

class TelaDesempenho extends StatefulWidget {
  const TelaDesempenho({super.key});

  @override
  State<TelaDesempenho> createState() => _TelaDesempenhoState();
}

class _TelaDesempenhoState extends State<TelaDesempenho> {
  int _abaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CabecalhoDesempenho(),
              const SizedBox(height: 24),
              const CardVisaoGeral(),
              const SizedBox(height: 24),
              SeletorVisualizacao(
                indiceAtual: _abaSelecionada,
                aoClicar: (index) => setState(() => _abaSelecionada = index),
              ),
              const SizedBox(height: 24),
              _construirConteudoAba(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _construirConteudoAba() {
    if (_abaSelecionada == 0) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nível 1 • Disciplinas',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E293B),
            ),
          ),
          SizedBox(height: 16),
          ListaDisciplinas(),
        ],
      );
    } else {
      return const AbaFrequencia();
    }
  }
}
