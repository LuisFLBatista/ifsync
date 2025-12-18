import 'package:flutter/material.dart';

class SeletorVisualizacao extends StatelessWidget {
  final int indiceAtual;
  final Function(int) aoClicar;

  const SeletorVisualizacao({
    super.key,
    required this.indiceAtual,
    required this.aoClicar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFFEBE7FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => aoClicar(0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: indiceAtual == 0
                      ? const Color(0xFF7B61FF)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: indiceAtual == 0
                      ? [
                          BoxShadow(
                            color:
                                const Color(0xFF7B61FF).withValues(alpha: 0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ]
                      : [],
                ),
                child: Center(
                  child: Text(
                    'Todas as Disciplinas',
                    style: TextStyle(
                      color: indiceAtual == 0
                          ? Colors.white
                          : const Color(0xFF64748B),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => aoClicar(1),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: indiceAtual == 1
                      ? const Color(0xFF7B61FF)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: indiceAtual == 1
                      ? [
                          BoxShadow(
                            color:
                                const Color(0xFF7B61FF).withValues(alpha: 0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ]
                      : [],
                ),
                child: Center(
                  child: Text(
                    'Frequência',
                    style: TextStyle(
                      color: indiceAtual == 1
                          ? Colors.white
                          : const Color(0xFF64748B),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
