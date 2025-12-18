import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CabecalhoPerfil extends StatelessWidget {
  const CabecalhoPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Espaçador invisível para manter o título centralizado
        const SizedBox(width: 40),

        const Text(
          'Perfil',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E293B),
          ),
        ),

        const CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=11'), // Foto diferente para variar
        ),
      ],
    );
  }
}
