import 'package:flutter/material.dart';
import '../tema/cores.dart';
import '../tema/estilos.dart';
import '../componentes/comuns/cabecalho_com_avatar.dart';
import '../componentes/comuns/seletor_abas.dart';
import '../componentes/tela_desempenho/card_visao_geral.dart';
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
      backgroundColor: AppCores.fundo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppEstilos.paddingDeTela,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CabecalhoComAvatar(titulo: 'Desempenho'),
              const SizedBox(height: 24),
              const CardVisaoGeral(),
              const SizedBox(height: 24),
              SeletorAbas(
                abas: const ['Todas as Disciplinas', 'Frequência'],
                indiceAtual: _abaSelecionada,
                aoSelecionar: (indice) =>
                    setState(() => _abaSelecionada = indice),
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
    if (_abaSelecionada == 1) {
      return const AbaFrequencia();
    }
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nível 1 • Disciplinas',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppCores.textoPrimario,
          ),
        ),
        SizedBox(height: 16),
        ListaDisciplinas(),
      ],
    );
  }
}
