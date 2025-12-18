import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ResumoDisciplina extends StatelessWidget {
  const ResumoDisciplina({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: _CardInfo(
                    titulo: 'Professor',
                    valor: '[Nome do Professor]',
                    icone: null)),
            SizedBox(width: 12),
            Expanded(
                child: _CardInfo(
                    titulo: 'Período', valor: '[Ano/Semestre]', icone: null)),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Expanded(
                child: _CardInfo(
                    titulo: 'Média Atual',
                    valor: '[8.5]',
                    icone: LucideIcons.star,
                    meta: 'Meta: 7.0')),
            SizedBox(width: 12),
            Expanded(
                child: _CardInfo(
                    titulo: 'Faltas',
                    valor: '[3/16]',
                    icone: LucideIcons.calendar,
                    meta: 'Limite: 25%')),
          ],
        ),
      ],
    );
  }
}

class _CardInfo extends StatelessWidget {
  final String titulo;
  final String valor;
  final IconData? icone;
  final String? meta;

  const _CardInfo(
      {required this.titulo, required this.valor, this.icone, this.meta});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEBE7FF).withOpacity(0.5), // Fundo bem suave
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icone != null) ...[
            Icon(icone, size: 20, color: const Color(0xFF1E293B)),
            const SizedBox(height: 8),
          ],
          Text(titulo,
              style: const TextStyle(fontSize: 12, color: Color(0xFF64748B))),
          const SizedBox(height: 4),
          Text(valor,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E293B))),
          if (meta != null) ...[
            const SizedBox(height: 4),
            Text(meta!,
                style: const TextStyle(fontSize: 11, color: Color(0xFF64748B))),
          ]
        ],
      ),
    );
  }
}
