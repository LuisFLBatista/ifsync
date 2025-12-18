import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SecaoEstatisticas extends StatelessWidget {
  const SecaoEstatisticas({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Card Desempenho
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.02),
                    blurRadius: 10,
                    offset: const Offset(0, 4)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(LucideIcons.medal,
                            size: 18, color: Color(0xFF1E293B)),
                        SizedBox(width: 8),
                        Text('Desempenho',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xFF64748B))),
                      ],
                    ),
                    Icon(LucideIcons.chevronRight,
                        size: 16, color: Color(0xFF94A3B8)),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  '8,6',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: 0.86,
                  backgroundColor: const Color(0xFFF1F5F9),
                  color: const Color(0xFF7B61FF),
                  minHeight: 6,
                  borderRadius: BorderRadius.circular(10),
                ),
                const SizedBox(height: 8),
                const Text('Média geral (SUAP)',
                    style: TextStyle(fontSize: 12, color: Color(0xFF94A3B8))),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        // Card Risco de Faltas
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFEDD5),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(LucideIcons.alertTriangle,
                        size: 18, color: Color(0xFF9A3412)),
                    SizedBox(width: 8),
                    Text('Risco de faltas',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFF9A3412))),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  '75%',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF9A3412)),
                ),
                SizedBox(height: 8),
                Text(
                  'Cálculo I • perto do limite',
                  style: TextStyle(
                      fontSize: 12, color: Color(0xFF9A3412), height: 1.5),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
