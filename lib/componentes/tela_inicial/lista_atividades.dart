import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class CabecalhoListaAtividades extends StatelessWidget {
  const CabecalhoListaAtividades({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            'Próximas atividades',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppCores.textoPrimario),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(width: 8),
        Row(
          children: [
            _FiltroPeriodo(rotulo: 'Hoje', ativo: true),
            SizedBox(width: 8),
            _FiltroPeriodo(rotulo: 'Esta Semana', ativo: false),
          ],
        )
      ],
    );
  }
}

class _FiltroPeriodo extends StatelessWidget {
  final String rotulo;
  final bool ativo;

  const _FiltroPeriodo({required this.rotulo, required this.ativo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: ativo ? AppCores.roxoPrimario : AppCores.divisor,
        borderRadius: BorderRadius.circular(AppEstilos.raioPilula),
      ),
      child: Text(
        rotulo,
        style: TextStyle(
          color: ativo ? Colors.white : AppCores.textoSecundario,
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
      ),
    );
  }
}

class ListaAtividades extends StatelessWidget {
  const ListaAtividades({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemAtividade(
          icone: LucideIcons.bookOpen,
          titulo: 'Leitura: Cap. 3 – SO',
          subtitulo: 'Hoje • 14:00 • Moodle',
          tag: 'Leitura',
          corTag: AppCores.roxoClaro,
        ),
        SizedBox(height: 16),
        ItemAtividade(
          icone: LucideIcons.penTool,
          titulo: 'Quiz de Álgebra',
          subtitulo: 'Hoje • 18:30 • Moodle',
          tag: 'Quiz',
          corTag: AppCores.roxoTag,
        ),
        SizedBox(height: 16),
        ItemAtividade(
          icone: LucideIcons.calendar,
          titulo: 'Entrega: Projeto Web',
          subtitulo: 'Amanhã • 09:00 • Moodle',
          tag: 'Entrega',
          corTag: AppCores.roxoClaro,
        ),
      ],
    );
  }
}

class ItemAtividade extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String subtitulo;
  final String tag;
  final Color corTag;

  const ItemAtividade({
    super.key,
    required this.icone,
    required this.titulo,
    required this.subtitulo,
    required this.tag,
    required this.corTag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppEstilos.raioCard),
        boxShadow: AppEstilos.sombraCardPequeno,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppCores.divisor,
              borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
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
                      color: AppCores.textoPrimario),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitulo,
                  style: const TextStyle(
                      color: AppCores.textoTerciario, fontSize: 13),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: corTag,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              tag,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppCores.textoPrimario),
            ),
          )
        ],
      ),
    );
  }
}
