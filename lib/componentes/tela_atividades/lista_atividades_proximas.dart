import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';
import '../comuns/etiqueta_status.dart';

class ListaAtividadesProximas extends StatelessWidget {
  const ListaAtividadesProximas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Todas as Atividades',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppCores.textoPrimario,
          ),
        ),
        SizedBox(height: 16),
        _ItemAtividade(
          titulo: 'Quiz 5',
          disciplina: 'Lógica de Programação',
          prazo: 'Prazo: 22/05 • Moodle',
          status: 'A fazer',
          icone: LucideIcons.fileText,
        ),
        SizedBox(height: 12),
        _ItemAtividade(
          titulo: 'Trabalho Final',
          disciplina: 'Cálculo I',
          prazo: 'Prazo: 25/05 • Presencial',
          status: 'Em andamento',
          icone: LucideIcons.clipboardList,
        ),
        SizedBox(height: 12),
        _ItemAtividade(
          titulo: 'Fórum: Recursão',
          disciplina: 'Lógica de Programação',
          prazo: 'Prazo: 28/05 • Moodle',
          status: 'Opcional',
          icone: LucideIcons.messageSquare,
        ),
        SizedBox(height: 12),
        _ItemAtividade(
          titulo: 'Lista de Exercícios 3',
          disciplina: 'Algoritmos e Estruturas de Dados',
          prazo: 'Prazo: 30/05 • Moodle',
          status: 'A fazer',
          icone: LucideIcons.fileText,
        ),
        SizedBox(height: 12),
        _ItemAtividade(
          titulo: 'Projeto Final - Etapa 1',
          disciplina: 'Lógica de Programação',
          prazo: 'Prazo: 05/06 • Moodle',
          status: 'Em andamento',
          icone: LucideIcons.code,
        ),
        SizedBox(height: 12),
        _ItemAtividade(
          titulo: 'Prova P2',
          disciplina: 'Banco de Dados',
          prazo: 'Prazo: 08/06 • Presencial',
          status: 'A fazer',
          icone: LucideIcons.fileCheck,
        ),
      ],
    );
  }
}

class _ItemAtividade extends StatelessWidget {
  final String titulo;
  final String disciplina;
  final String prazo;
  final String status;
  final IconData icone;

  const _ItemAtividade({
    required this.titulo,
    required this.disciplina,
    required this.prazo,
    required this.status,
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
              color: AppCores.roxoClaro.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icone, size: 20, color: AppCores.roxoPrimario),
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
                  prazo,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppCores.textoTerciario,
                  ),
                ),
              ],
            ),
          ),
          EtiquetaStatus(status),
        ],
      ),
    );
  }
}
