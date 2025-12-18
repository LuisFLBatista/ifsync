import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AbaAtividades extends StatelessWidget {
  const AbaAtividades({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Seção Próximas
        Row(
          children: [
            Icon(LucideIcons.listChecks, size: 20, color: Color(0xFF1E293B)),
            SizedBox(width: 8),
            Text(
              'Próximas',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        _ItemAtividade(
          titulo: 'Quiz 5',
          prazo: 'Prazo: 22/05 • Moodle',
          status: 'A fazer',
          corStatus: Color(0xFFDDD6FE),
          corTextoStatus: Color(0xFF6B21A8),
        ),
        SizedBox(height: 12),
        _ItemAtividade(
          titulo: 'Fórum: Recursão',
          prazo: 'Prazo: 28/05 • Moodle',
          status: 'Opcional',
          corStatus: Color(0xFFE0E7FF),
          corTextoStatus: Color(0xFF4338CA),
        ),
        SizedBox(height: 12),
        _ItemAtividade(
          titulo: 'Projeto Final - Etapa 1',
          prazo: 'Prazo: 05/06 • Moodle',
          status: 'Em andamento',
          corStatus: Color(0xFFDDD6FE),
          corTextoStatus: Color(0xFF6B21A8),
        ),

        SizedBox(height: 32),

        // Seção Entregues
        Row(
          children: [
            Icon(LucideIcons.clock, size: 20, color: Color(0xFF1E293B)),
            SizedBox(width: 8),
            Text(
              'Entregues',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        _ItemAtividadeEntregue(
          titulo: 'T1 - Vetores',
          data: 'Entregue em 26/04',
          nota: '9,0',
        ),
        SizedBox(height: 12),
        _ItemAtividadeEntregue(
          titulo: 'P1',
          data: 'Aplicada em 12/04',
          nota: '8,0',
        ),

        SizedBox(height: 40),
      ],
    );
  }
}

class _ItemAtividade extends StatelessWidget {
  final String titulo;
  final String prazo;
  final String status;
  final Color corStatus;
  final Color corTextoStatus;

  const _ItemAtividade({
    required this.titulo,
    required this.prazo,
    required this.status,
    required this.corStatus,
    required this.corTextoStatus,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF1E293B),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  prazo,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF94A3B8),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: corStatus,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              status,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: corTextoStatus,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemAtividadeEntregue extends StatelessWidget {
  final String titulo;
  final String data;
  final String nota;

  const _ItemAtividadeEntregue({
    required this.titulo,
    required this.data,
    required this.nota,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF1E293B),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  data,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF94A3B8),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              nota,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
