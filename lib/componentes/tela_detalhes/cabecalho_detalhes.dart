import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';
import '../../tema/imagens.dart';

class CabecalhoDetalhes extends StatelessWidget {
  final String titulo;
  const CabecalhoDetalhes({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppCores.roxoClaro,
              borderRadius: BorderRadius.circular(AppEstilos.raioPilula),
            ),
            child: const Row(
              children: [
                Icon(LucideIcons.chevronLeft,
                    size: 18, color: AppCores.textoPrimario),
                SizedBox(width: 4),
                Text(
                  'Voltar',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppCores.textoPrimario),
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
              color: AppCores.textoPrimario,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(AppImagens.avatarAluno),
        ),
      ],
    );
  }
}
