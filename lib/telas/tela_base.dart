import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart'; 
import 'tela_inicial.dart';
import 'tela_desempenho.dart';
import 'tela_perfil.dart';

// Placeholder para telas que ainda não criamos
class TelaPlaceholder extends StatelessWidget {
  final String titulo;
  const TelaPlaceholder({super.key, required this.titulo});
  @override
  Widget build(BuildContext context) => Center(child: Text(titulo));
}

class TelaBase extends StatefulWidget {
  const TelaBase({super.key});

  @override
  State<TelaBase> createState() => _TelaBaseState();
}

class _TelaBaseState extends State<TelaBase> {
  int _indiceAtual = 0;

  // Lista das telas que o menu vai mostrar
  final List<Widget> _telas = [
    const TelaInicial(),           // Índice 0
    const TelaPlaceholder(titulo: 'Atividades'), // Índice 1
    const TelaDesempenho(),        // Índice 2
    const TelaPerfil(),            // Índice 3 (ALTERADO AQUI)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      // O body muda conforme o índice selecionado
      body: _telas[_indiceAtual],
      // A barra fica fixa aqui embaixo
      bottomNavigationBar: BarraNavegacao(
        indiceAtual: _indiceAtual,
        aoClicar: (novoIndice) {
          setState(() {
            _indiceAtual = novoIndice;
          });
        },
      ),
    );
  }
}