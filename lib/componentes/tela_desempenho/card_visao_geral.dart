import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class CardVisaoGeral extends StatelessWidget {
  const CardVisaoGeral({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppEstilos.cardBranco,
      child: const Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _IconeTitulo(),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Visão geral',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppCores.textoPrimario,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Acompanhe notas, faltas e atividades por disciplina',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppCores.textoSecundario,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              _CaixaEstatistica(rotulo: 'Média\nGeral', valor: '8,6'),
              SizedBox(width: 12),
              _CaixaEstatistica(rotulo: 'Disciplinas', valor: '7'),
              SizedBox(width: 12),
              _CaixaEstatistica(rotulo: 'Risco de\nFaltas', valor: '2'),
            ],
          ),
        ],
      ),
    );
  }
}

class _IconeTitulo extends StatelessWidget {
  const _IconeTitulo();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppCores.roxoClaro,
        shape: BoxShape.circle,
      ),
      child: const Icon(LucideIcons.medal,
          size: 20, color: AppCores.textoPrimario),
    );
  }
}

class _CaixaEstatistica extends StatelessWidget {
  final String rotulo;
  final String valor;

  const _CaixaEstatistica({required this.rotulo, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppCores.roxoClaro,
          borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              rotulo,
              style: const TextStyle(
                fontSize: 11,
                color: AppCores.textoSecundario,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              valor,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppCores.textoPrimario,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
