import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class CardProximaEntrega extends StatelessWidget {
  const CardProximaEntrega({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppCores.roxoClaroAlt,
        borderRadius: BorderRadius.circular(AppEstilos.raioCard),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: AppEstilos.sombraCard,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(LucideIcons.clock,
                          size: 20, color: AppCores.textoPrimario),
                    ),
                    const SizedBox(width: 8),
                    const Flexible(
                      child: Text(
                        'Próxima entrega',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppCores.roxoChip,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        '18h',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: AppCores.textoPrimario),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppCores.roxoPrimario,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                ),
                child: const Text('Ver',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
              )
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Trabalho de Redes • Moodle',
            style: TextStyle(
                color: AppCores.textoSecundario, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              _ChipInformacao(texto: 'Turma: 4º Info B'),
              SizedBox(width: 12),
              _ChipInformacao(texto: 'Valor: 2.0'),
            ],
          )
        ],
      ),
    );
  }
}

class _ChipInformacao extends StatelessWidget {
  final String texto;
  const _ChipInformacao({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: AppCores.roxoClaro,
        borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          color: AppCores.textoPrimario,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    );
  }
}
