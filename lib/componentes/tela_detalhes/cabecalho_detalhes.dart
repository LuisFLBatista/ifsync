import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CabecalhoDetalhes extends StatelessWidget {
  final String titulo;
  const CabecalhoDetalhes({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context), // Volta para a tela anterior
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFEBE7FF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                Icon(LucideIcons.chevronLeft,
                    size: 18, color: Color(0xFF1E293B)),
                SizedBox(width: 4),
                Text(
                  'Voltar',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1E293B)),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Text(
            titulo,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E293B),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=32'),
        ),
      ],
    );
  }
}
