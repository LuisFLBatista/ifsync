import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CabecalhoDesempenho extends StatelessWidget {
  const CabecalhoDesempenho({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Espaçador invisível para manter o título centralizado
        const SizedBox(width: 40),

        // Título Centralizado
        const Text(
          'Desempenho',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E293B),
          ),
        ),

        // Avatar
        const CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=32'), // Usando a mesma imagem de placeholder
        ),
      ],
    );
  }
}
