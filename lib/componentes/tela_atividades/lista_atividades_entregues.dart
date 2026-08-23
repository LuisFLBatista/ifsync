import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class ListaAtividadesEntregues extends StatelessWidget {
  const ListaAtividadesEntregues({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Atividades Concluídas',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppCores.textoPrimario,
          ),
        ),
        SizedBox(height: 16),
        _ItemAtividadeEntregue(
          titulo: 'T1 - Vetores',
          disciplina: 'Lógica de Programação',
          data: 'Entregue em 26/04',
          nota: '9,0',
          icone: LucideIcons.code,
        ),
        SizedBox(height: 12),
        _ItemAtividadeEntregue(
          titulo: 'P1',
          disciplina: 'Lógica de Programação',
          data: 'Aplicada em 12/04',
          nota: '8,0',
          icone: LucideIcons.fileCheck,
        ),
        SizedBox(height: 12),
        _ItemAtividadeEntregue(
          titulo: 'Quiz 4',
          disciplina: 'Lógica de Programação',
          data: 'Entregue em 08/04',
          nota: '10,0',
          icone: LucideIcons.fileText,
        ),
        SizedBox(height: 12),
        _ItemAtividadeEntregue(
          titulo: 'Lista de Exercícios 2',
          disciplina: 'Algoritmos e Estruturas de Dados',
          data: 'Entregue em 05/04',
          nota: '8,5',
          icone: LucideIcons.fileText,
        ),
        SizedBox(height: 12),
        _ItemAtividadeEntregue(
          titulo: 'Trabalho Prático 1',
          disciplina: 'Banco de Dados',
          data: 'Entregue em 28/03',
          nota: '9,5',
          icone: LucideIcons.clipboardList,
        ),
        SizedBox(height: 12),
        _ItemAtividadeEntregue(
          titulo: 'Prova P1',
          disciplina: 'Cálculo I',
          data: 'Aplicada em 20/03',
          nota: '7,5',
          icone: LucideIcons.fileCheck,
        ),
        SizedBox(height: 24),
        _CardMediaGeral(),
      ],
    );
  }
}

class _CardMediaGeral extends StatelessWidget {
  const _CardMediaGeral();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppCores.roxoClaro.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
      ),
      child: const Row(
        children: [
          Icon(LucideIcons.trophy, size: 18, color: AppCores.roxoPrimario),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Média Geral',
                  style:
                      TextStyle(fontSize: 13, color: AppCores.textoSecundario),
                ),
                SizedBox(height: 4),
                Text(
                  '8,75',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppCores.textoPrimario,
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

class _ItemAtividadeEntregue extends StatelessWidget {
  final String titulo;
  final String disciplina;
  final String data;
  final String nota;
  final IconData icone;

  const _ItemAtividadeEntregue({
    required this.titulo,
    required this.disciplina,
    required this.data,
    required this.nota,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
        border: Border.all(color: Colors.white),
        boxShadow: AppEstilos.sombraCardPequeno,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppCores.sucesso.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icone, size: 20, color: AppCores.sucesso),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: AppCores.textoPrimario,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  disciplina,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppCores.textoSecundario,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  data,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppCores.textoTerciario,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppCores.divisor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              nota,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppCores.textoPrimario,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
