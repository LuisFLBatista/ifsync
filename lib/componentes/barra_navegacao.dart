import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../tema/cores.dart';
import '../tema/estilos.dart';

/// Barra de navegação inferior compartilhada pela [TelaBase].
class BarraNavegacao extends StatelessWidget {
  final int indiceAtual;
  final ValueChanged<int> aoClicar;

  const BarraNavegacao({
    super.key,
    required this.indiceAtual,
    required this.aoClicar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      color: Colors.transparent,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ItemNavegacao(
              icone: LucideIcons.home,
              label: 'Início',
              selecionado: indiceAtual == 0,
              aoTocar: () => aoClicar(0),
            ),
            _ItemNavegacao(
              icone: LucideIcons.list,
              label: 'Atividades',
              selecionado: indiceAtual == 1,
              aoTocar: () => aoClicar(1),
            ),
            _ItemNavegacao(
              icone: LucideIcons.barChart2,
              label: 'Desempenho',
              selecionado: indiceAtual == 2,
              aoTocar: () => aoClicar(2),
            ),
            _ItemNavegacao(
              icone: LucideIcons.user,
              label: 'Perfil',
              selecionado: indiceAtual == 3,
              aoTocar: () => aoClicar(3),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemNavegacao extends StatelessWidget {
  final IconData icone;
  final String label;
  final bool selecionado;
  final VoidCallback aoTocar;

  const _ItemNavegacao({
    required this.icone,
    required this.label,
    required this.selecionado,
    required this.aoTocar,
  });

  @override
  Widget build(BuildContext context) {
    final cor = selecionado ? AppCores.textoPrimario : AppCores.textoTerciario;
    return GestureDetector(
      onTap: aoTocar,
      behavior: HitTestBehavior.opaque, // Toque ativo em toda a área do item.
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: selecionado ? AppCores.roxoClaro : Colors.transparent,
          borderRadius: BorderRadius.circular(AppEstilos.raioPilula),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icone, color: cor, size: 20),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: cor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
