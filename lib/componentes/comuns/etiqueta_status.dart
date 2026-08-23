import 'package:flutter/material.dart';
import '../../tema/cores.dart';

/// Etiqueta colorida com o status de uma atividade ("A fazer", "Opcional"...).
///
/// Centraliza o mapa status -> cores, que antes era repetido (com os mesmos
/// `Color(0xFF...)`) em cada item de lista de atividades.
class EtiquetaStatus extends StatelessWidget {
  final String status;

  const EtiquetaStatus(this.status, {super.key});

  // Cada status define um par (fundo, texto). O que não estiver no mapa cai no
  // estilo padrão de "a fazer".
  static const Map<String, (Color fundo, Color texto)> _paleta = {
    'Opcional': (AppCores.statusOpcional, AppCores.statusOpcionalTexto),
  };

  @override
  Widget build(BuildContext context) {
    final (fundo, texto) =
        _paleta[status] ?? (AppCores.statusFazer, AppCores.statusFazerTexto);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: fundo,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: texto,
        ),
      ),
    );
  }
}
