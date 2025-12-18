import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../telas/tela_detalhes.dart';

class ListaDisciplinas extends StatelessWidget {
  const ListaDisciplinas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemDisciplina(
          icone: LucideIcons.calculator, // Lógica
          titulo: 'Lógica de Programação',
          media: '7,8',
          faltas: '12/16',
          proximaAtividade: 'Prox.: Prova P2',
        ),
        SizedBox(height: 16),
        ItemDisciplina(
          icone: LucideIcons.database, // Banco de Dados
          titulo: 'Banco de Dados',
          media: '9,1',
          faltas: '3/16',
          proximaAtividade: 'Prox.: TP2',
        ),
        SizedBox(height: 16),
        ItemDisciplina(
          icone: LucideIcons.cpu, // Sistemas Operacionais
          titulo: 'Sistemas Operacionais',
          media: '8,4',
          faltas: '4/16',
          proximaAtividade: 'Prox.: Quiz 4',
        ),
        SizedBox(height: 16),
        ItemDisciplina(
          icone: LucideIcons.gitBranch, // Eng. Software
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
      onTap: () {
        // Navegação para a tela de detalhes passando o nome da matéria
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                TelaDetalhesDisciplina(nomeDisciplina: titulo),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border:
              Border.all(color: Colors.white, width: 2), // Borda branca sutil
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ícone
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Color(0xFFF1F5F9), // Cinza claro
                shape: BoxShape.circle,
              ),
              child: Icon(icone, color: const Color(0xFF1E293B), size: 20),
            ),
            const SizedBox(width: 16),

            // Conteúdo
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF1E293B),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEBE7FF), // Roxo claro
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      proximaAtividade,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Seta direita
            const Icon(LucideIcons.chevronRight,
                size: 20, color: Color(0xFF94A3B8)),
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
        color: const Color(0xFFF1F5F9), // Cinza
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          color: Color(0xFF64748B),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
