import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';

class HeaderBoasVindas extends StatelessWidget {
  const HeaderBoasVindas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _IconeMarca(),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bem-vindo(a)!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppCores.textoPrimario,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Unifique Moodle + SUAP em um só lugar',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppCores.textoSecundario,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8),
        Icon(LucideIcons.helpCircle, size: 24, color: AppCores.textoTerciario),
      ],
    );
  }
}

class _IconeMarca extends StatelessWidget {
  const _IconeMarca();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppCores.roxoClaro,
        shape: BoxShape.circle,
      ),
      child: const Icon(LucideIcons.sparkles,
          size: 20, color: AppCores.roxoPrimario),
    );
  }
}
