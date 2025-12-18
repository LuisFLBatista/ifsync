import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

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
            color: Color(0xFF1E293B),
          ),
        ),
        const SizedBox(height: 16),
        _ItemFrequencia(
          nomeDisciplina: 'Lógica de Programação',
          faltas: 3,
          totalAulas: 16,
          percentual: 81,
          cor: const Color(0xFF7B61FF),
        ),
        const SizedBox(height: 12),
        _ItemFrequencia(
          nomeDisciplina: 'Cálculo I',
          faltas: 2,
          totalAulas: 18,
          percentual: 89,
          cor: const Color(0xFF10B981),
        ),
        const SizedBox(height: 12),
        _ItemFrequencia(
          nomeDisciplina: 'Algoritmos e Estruturas de Dados',
          faltas: 1,
          totalAulas: 14,
          percentual: 93,
          cor: const Color(0xFF3B82F6),
        ),
        const SizedBox(height: 12),
        _ItemFrequencia(
          nomeDisciplina: 'Banco de Dados',
          faltas: 4,
          totalAulas: 16,
          percentual: 75,
          cor: const Color(0xFFF59E0B),
        ),
        const SizedBox(height: 12),
        _ItemFrequencia(
          nomeDisciplina: 'Engenharia de Software',
          faltas: 0,
          totalAulas: 12,
          percentual: 100,
          cor: const Color(0xFF10B981),
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFEBE7FF).withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Row(
            children: [
              Icon(LucideIcons.info, size: 18, color: Color(0xFF7B61FF)),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Limite mínimo de frequência: 75%',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF64748B),
                  ),
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
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
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
                    color: Color(0xFF1E293B),
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
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF94A3B8),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '$faltas/$totalAulas',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
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
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF94A3B8),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: LinearProgressIndicator(
                        value: percentual / 100,
                        backgroundColor: const Color(0xFFE2E8F0),
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
