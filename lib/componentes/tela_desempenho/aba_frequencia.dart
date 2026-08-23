import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class AbaFrequencia extends StatelessWidget {
  const AbaFrequencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nível 1 • Frequência',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppCores.textoPrimario,
          ),
        ),
        const SizedBox(height: 16),
        const _ItemFrequencia(
          nomeDisciplina: 'Lógica de Programação',
          faltas: 3,
          totalAulas: 16,
          percentual: 81,
          cor: AppCores.roxoPrimario,
        ),
        const SizedBox(height: 12),
        const _ItemFrequencia(
          nomeDisciplina: 'Cálculo I',
          faltas: 2,
          totalAulas: 18,
          percentual: 89,
          cor: AppCores.sucesso,
        ),
        const SizedBox(height: 12),
        const _ItemFrequencia(
          nomeDisciplina: 'Algoritmos e Estruturas de Dados',
          faltas: 1,
          totalAulas: 14,
          percentual: 93,
          cor: AppCores.info,
        ),
        const SizedBox(height: 12),
        const _ItemFrequencia(
          nomeDisciplina: 'Banco de Dados',
          faltas: 4,
          totalAulas: 16,
          percentual: 75,
          cor: AppCores.aviso,
        ),
        const SizedBox(height: 12),
        const _ItemFrequencia(
          nomeDisciplina: 'Engenharia de Software',
          faltas: 0,
          totalAulas: 12,
          percentual: 100,
          cor: AppCores.sucesso,
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppCores.roxoClaro.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
          ),
          child: const Row(
            children: [
              Icon(LucideIcons.info, size: 18, color: AppCores.roxoPrimario),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Limite mínimo de frequência: 75%',
                  style:
                      TextStyle(fontSize: 13, color: AppCores.textoSecundario),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ItemFrequencia extends StatelessWidget {
  final String nomeDisciplina;
  final int faltas;
  final int totalAulas;
  final int percentual;
  final Color cor;

  const _ItemFrequencia({
    required this.nomeDisciplina,
    required this.faltas,
    required this.totalAulas,
    required this.percentual,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
        border: Border.all(color: Colors.white),
        boxShadow: AppEstilos.sombraCardPequeno,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  nomeDisciplina,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: AppCores.textoPrimario,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: cor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '$percentual%',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: cor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Faltas',
                      style:
                          TextStyle(fontSize: 12, color: AppCores.textoTerciario),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '$faltas/$totalAulas',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppCores.textoPrimario,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Presença',
                      style:
                          TextStyle(fontSize: 12, color: AppCores.textoTerciario),
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: LinearProgressIndicator(
                        value: percentual / 100,
                        backgroundColor: AppCores.borda,
                        valueColor: AlwaysStoppedAnimation<Color>(cor),
                        minHeight: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
