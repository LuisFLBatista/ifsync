import 'package:flutter/material.dart';

class SeletorAbasDetalhes extends StatelessWidget {
  final int indiceAtual;
  final Function(int) aoClicar;

  const SeletorAbasDetalhes(
      {super.key, required this.indiceAtual, required this.aoClicar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFFEBE7FF).withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _BotaoAba(
              label: 'Notas',
              selecionado: indiceAtual == 0,
              onTap: () => aoClicar(0)),
          _BotaoAba(
              label: 'Atividades (Moodle)',
              selecionado: indiceAtual == 1,
              onTap: () => aoClicar(1)),
        ],
      ),
    );
  }
}

class _BotaoAba extends StatelessWidget {
  final String label;
  final bool selecionado;
  final VoidCallback onTap;

  const _BotaoAba(
      {required this.label, required this.selecionado, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: selecionado ? const Color(0xFF7B61FF) : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: selecionado ? Colors.white : const Color(0xFF64748B),
            ),
          ),
        ),
      ),
    );
  }
}
