import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AbaNotas extends StatelessWidget {
  const AbaNotas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(LucideIcons.clipboardList,
                    size: 20, color: Color(0xFF1E293B)),
                SizedBox(width: 8),
                Text('Avaliações',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B))),
              ],
            ),
            Text('Peso',
                style: TextStyle(color: Color(0xFF64748B), fontSize: 13)),
          ],
        ),
        SizedBox(height: 16),
        _ItemAvaliacao(
            titulo: 'Prova P1',
            data: 'Entregue • 12/04',
            peso: '30%',
            nota: '8,0'),
        SizedBox(height: 12),
        _ItemAvaliacao(
            titulo: 'Trabalho T1',
            data: 'Entregue • 26/04',
            peso: '20%',
            nota: '9,0'),
        SizedBox(height: 12),
        _ItemAvaliacao(
            titulo: 'Prova P2',
            data: 'Agendada • 15/06',
            peso: '30%',
            nota: '-'),
        SizedBox(height: 12),
        _ItemAvaliacao(
            titulo: 'Quiz Semanais',
            data: 'Média até agora',
            peso: '20%',
            nota: '8,7'),

        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Fórmula: Média ponderada',
                style: TextStyle(fontSize: 12, color: Color(0xFF94A3B8))),
            Text('Média Parcial: 8,5',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF1E293B))),
          ],
        ),
        // Adicione um padding extra no final para não ficar colado na borda se houver scroll
        SizedBox(height: 40),
      ],
    );
  }
}

class _ItemAvaliacao extends StatelessWidget {
  final String titulo;
  final String data;
  final String peso;
  final String nota;

  const _ItemAvaliacao(
      {required this.titulo,
      required this.data,
      required this.peso,
      required this.nota});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 8,
              offset: const Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFF1E293B))),
              const SizedBox(height: 4),
              Text(data,
                  style:
                      const TextStyle(fontSize: 12, color: Color(0xFF94A3B8))),
            ],
          ),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E8FF), // Roxo bem claro para o peso
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(peso,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6B21A8))),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: 30,
                child: Text(nota,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF1E293B))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
