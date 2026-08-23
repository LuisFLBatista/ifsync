import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';
import '../../telas/tela_detalhes.dart';

class ListaDisciplinas extends StatelessWidget {
  const ListaDisciplinas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemDisciplina(
          icone: LucideIcons.calculator,
          titulo: 'Lógica de Programação',
          media: '7,8',
          faltas: '12/16',
          proximaAtividade: 'Prox.: Prova P2',
        ),
        SizedBox(height: 16),
        ItemDisciplina(
          icone: LucideIcons.database,
          titulo: 'Banco de Dados',
          media: '9,1',
          faltas: '3/16',
          proximaAtividade: 'Prox.: TP2',
        ),
        SizedBox(height: 16),
        ItemDisciplina(
          icone: LucideIcons.cpu,
          titulo: 'Sistemas Operacionais',
          media: '8,4',
          faltas: '4/16',
          proximaAtividade: 'Prox.: Quiz 4',
        ),
        SizedBox(height: 16),
        ItemDisciplina(
          icone: LucideIcons.gitBranch,
          titulo: 'Engenharia de Software',
          media: '8,9',
          faltas: '2/16',
          proximaAtividade: 'Prox.: Sprint 3',
        ),
      ],
    );
  }
}

class ItemDisciplina extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String media;
  final String faltas;
  final String proximaAtividade;

  const ItemDisciplina({
    super.key,
    required this.icone,
    required this.titulo,
    required this.media,
    required this.faltas,
    required this.proximaAtividade,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => TelaDetalhesDisciplina(nomeDisciplina: titulo),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppEstilos.raioCard),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: AppEstilos.sombraCardPequeno,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: AppCores.divisor,
                shape: BoxShape.circle,
              ),
              child: Icon(icone, color: AppCores.textoPrimario, size: 20),
            ),
            const SizedBox(width: 16),
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
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      _TagInfo(texto: 'Média: $media'),
                      const SizedBox(width: 8),
                      _TagInfo(texto: 'Faltas: $faltas'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppCores.roxoClaro,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      proximaAtividade,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppCores.textoPrimario,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(LucideIcons.chevronRight,
                size: 20, color: AppCores.textoTerciario),
          ],
        ),
      ),
    );
  }
}

class _TagInfo extends StatelessWidget {
  final String texto;
  const _TagInfo({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppCores.divisor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          color: AppCores.textoSecundario,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
