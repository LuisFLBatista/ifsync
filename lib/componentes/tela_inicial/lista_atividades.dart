import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CabecalhoListaAtividades extends StatelessWidget {
  const CabecalhoListaAtividades({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // CORREÇÃO: Flexible permite que o texto se adapte ao espaço disponível
        const Flexible(
          child: Text(
            'Próximas atividades',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B)),
            overflow: TextOverflow
                .ellipsis, // Adiciona "..." se o texto for muito longo
          ),
        ),
        const SizedBox(
            width: 8), // Garante um espaço mínimo entre o título e os botões
        Row(
          children: [
            Container(
              // CORREÇÃO: Reduzi o padding horizontal de 16 para 12 para economizar espaço
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF7B61FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('Hoje',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13)),
            ),
            const SizedBox(width: 8),
            Container(
              // CORREÇÃO: Reduzi o padding horizontal de 16 para 12
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F5F9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('Esta Semana',
                  style: TextStyle(
                      color: Color(0xFF64748B),
                      fontWeight: FontWeight.w600,
                      fontSize: 13)),
            ),
          ],
        )
      ],
    );
  }
}

class ListaAtividades extends StatelessWidget {
  const ListaAtividades({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemAtividade(
          icone: LucideIcons.bookOpen,
          titulo: 'Leitura: Cap. 3 – SO',
          subtitulo: 'Hoje • 14:00 • Moodle',
          tag: 'Leitura',
          corTag: Color(0xFFEBE7FF),
        ),
        SizedBox(height: 16),
        ItemAtividade(
          icone: LucideIcons.penTool,
          titulo: 'Quiz de Álgebra',
          subtitulo: 'Hoje • 18:30 • Moodle',
          tag: 'Quiz',
          corTag: Color(0xFFF3E8FF),
        ),
        SizedBox(height: 16),
        ItemAtividade(
          icone: LucideIcons.calendar,
          titulo: 'Entrega: Projeto Web',
          subtitulo: 'Amanhã • 09:00 • Moodle',
          tag: 'Entrega',
          corTag: Color(0xFFEBE7FF),
        ),
      ],
    );
  }
}

class ItemAtividade extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String subtitulo;
  final String tag;
  final Color corTag;

  const ItemAtividade({
    super.key,
    required this.icone,
    required this.titulo,
    required this.subtitulo,
    required this.tag,
    required this.corTag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 8,
              offset: const Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icone, color: const Color(0xFF1E293B), size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF1E293B)),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitulo,
                  style:
                      const TextStyle(color: Color(0xFF94A3B8), fontSize: 13),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: corTag,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              tag,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1E293B)),
            ),
          )
        ],
      ),
    );
  }
}
