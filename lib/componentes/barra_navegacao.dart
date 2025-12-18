import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
// Removemos imports de telas específicas aqui, pois quem controla isso agora é a TelaBase

class BarraNavegacao extends StatelessWidget {
  final int indiceAtual;
  final Function(int) aoClicar;

  const BarraNavegacao({
    super.key,
    required this.indiceAtual,
    required this.aoClicar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Removido o box decoration branco e a sombra ("parede")
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      color: Colors.transparent, // Fundo transparente
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ItemNavegacao(
              icone: LucideIcons.home,
              label: 'Início',
              selecionado: indiceAtual == 0,
              onTap: () => aoClicar(0),
            ),
            _ItemNavegacao(
              icone: LucideIcons.list,
              label: 'Atividades',
              selecionado: indiceAtual == 1,
              onTap: () => aoClicar(1),
            ),
            _ItemNavegacao(
              icone: LucideIcons.barChart2,
              label: 'Desempenho',
              selecionado: indiceAtual == 2,
              onTap: () => aoClicar(2),
            ),
            _ItemNavegacao(
              icone: LucideIcons.user,
              label: 'Perfil',
              selecionado: indiceAtual == 3,
              onTap: () => aoClicar(3),
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
  final VoidCallback onTap;

  const _ItemNavegacao({
    required this.icone,
    required this.label,
    required this.selecionado,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque, // Garante que o toque funcione em toda a área
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: selecionado ? const Color(0xFFEBE7FF) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icone,
              color: selecionado ? const Color(0xFF1E293B) : const Color(0xFF94A3B8),
              size: 20,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: selecionado ? const Color(0xFF1E293B) : const Color(0xFF94A3B8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}