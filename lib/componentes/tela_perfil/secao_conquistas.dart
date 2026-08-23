import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class SecaoConquistas extends StatelessWidget {
  const SecaoConquistas({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true, // Ocupa só o espaço necessário.
      physics: const NeverScrollableScrollPhysics(), // Quem rola é a página.
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.4, // Largura / altura dos cartões.
      children: const [
        _CardConquista(
          icone: LucideIcons.clock,
          titulo: 'Pontualidade em Dia',
          descricao: 'Entregou 5 tarefas antes do prazo',
          nivel: 'Lv. 2',
        ),
        _CardConquista(
          icone: LucideIcons.shieldCheck,
          titulo: 'Presença de Ferro',
          descricao: 'Frequência acima de 95%',
          nivel: 'Novato',
        ),
        _CardConquista(
          icone: LucideIcons.star,
          titulo: 'Top da Turma',
          descricao: 'Média geral acima de 9,0',
          nivel: 'Bloqueado',
          bloqueado: true,
        ),
        _CardConquista(
          icone: LucideIcons.trophy,
          titulo: 'Maratonista',
          descricao: '7 dias seguidos no app',
          nivel: 'Lv. 1',
        ),
      ],
    );
  }
}

class _CardConquista extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String descricao;
  final String nivel;
  final bool bloqueado;

  const _CardConquista({
    required this.icone,
    required this.titulo,
    required this.descricao,
    required this.nivel,
    this.bloqueado = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppCores.roxoClaro,
        borderRadius: BorderRadius.circular(AppEstilos.raioPilula),
        // Conquistas bloqueadas perdem a saturação.
        backgroundBlendMode: bloqueado ? BlendMode.luminosity : null,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icone, size: 24, color: AppCores.textoPrimario),
              const Spacer(),
              Text(
                titulo,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 13, height: 1.1),
              ),
              const SizedBox(height: 4),
              Text(
                descricao,
                style: const TextStyle(
                    fontSize: 10, color: AppCores.textoSecundario, height: 1.2),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                nivel,
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
