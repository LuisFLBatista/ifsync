import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class CardInformativo extends StatelessWidget {
  const CardInformativo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppCores.roxoClaro,
        borderRadius: BorderRadius.circular(AppEstilos.raioCard),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
            ),
            child: const Icon(LucideIcons.school,
                size: 24, color: AppCores.textoPrimario),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Seu painel acadêmico inteligente',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppCores.textoPrimario,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Conecte suas contas e deixe que a gente colete eventos, notas e prazos automaticamente.',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppCores.textoInfo,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
