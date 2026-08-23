import 'package:flutter/material.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';
import '../../tema/imagens.dart';

class InfoUsuario extends StatelessWidget {
  const InfoUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppEstilos.raioCard),
        border: Border.all(color: Colors.white),
        boxShadow: AppEstilos.sombraCard,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(AppImagens.avatarPerfil),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ana Souza',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppCores.textoPrimario,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'RA: 202310234 • Ciência da Computação',
                  style: TextStyle(fontSize: 12, color: AppCores.textoSecundario),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppCores.roxoClaro,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'Aluno',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppCores.textoPrimario,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
