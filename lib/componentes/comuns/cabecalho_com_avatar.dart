import 'package:flutter/material.dart';
import '../../tema/cores.dart';
import '../../tema/imagens.dart';

/// Cabeçalho com título centralizado e avatar à direita.
///
/// Reaproveitado pelas telas de Atividades, Desempenho e Perfil, que antes
/// repetiam o mesmo `Row` (regra 7 / DRY).
class CabecalhoComAvatar extends StatelessWidget {
  final String titulo;
  final String urlAvatar;

  const CabecalhoComAvatar({
    super.key,
    required this.titulo,
    this.urlAvatar = AppImagens.avatarAluno,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Espaçador invisível com a mesma largura do avatar, para o título
        // ficar opticamente centralizado.
        const SizedBox(width: 40),
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppCores.textoPrimario,
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(urlAvatar),
        ),
      ],
    );
  }
}
