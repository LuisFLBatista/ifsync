import 'package:flutter/material.dart';
import '../tema/cores.dart';
import '../tema/estilos.dart';
import '../componentes/comuns/cabecalho_com_avatar.dart';
import '../componentes/comuns/seletor_abas.dart';
import '../componentes/tela_atividades/lista_atividades_proximas.dart';
import '../componentes/tela_atividades/lista_atividades_entregues.dart';

class TelaAtividades extends StatefulWidget {
  const TelaAtividades({super.key});

  @override
  State<TelaAtividades> createState() => _TelaAtividadesState();
}

class _TelaAtividadesState extends State<TelaAtividades> {
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
              const CabecalhoComAvatar(titulo: 'Atividades'),
              const SizedBox(height: 24),
              SeletorAbas(
                abas: const ['Próximas', 'Entregues'],
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
    return _abaSelecionada == 0
        ? const ListaAtividadesProximas()
        : const ListaAtividadesEntregues();
  }
}
