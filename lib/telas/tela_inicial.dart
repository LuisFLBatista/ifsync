import 'package:flutter/material.dart';
import '../componentes/tela_inicial/secao_cabecalho.dart';
import '../componentes/tela_inicial/card_proxima_entrega.dart';
import '../componentes/tela_inicial/secao_estatisticas.dart';
import '../componentes/tela_inicial/lista_atividades.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SecaoCabecalho(),
              SizedBox(height: 24),
              CardProximaEntrega(),
              SizedBox(height: 24),
              SecaoEstatisticas(),
              SizedBox(height: 24),
              CabecalhoListaAtividades(),
              SizedBox(height: 16),
              ListaAtividades(),
            ],
          ),
        ),
      ),
    );
  }
}
