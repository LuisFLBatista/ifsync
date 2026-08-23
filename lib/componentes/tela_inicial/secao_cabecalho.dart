import 'package:flutter/material.dart';
import '../../tema/cores.dart';
import '../../tema/imagens.dart';

class SecaoCabecalho extends StatelessWidget {
  const SecaoCabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Olá, Ana!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppCores.textoPrimario,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Seg, 12 de Ago • 2025',
              style: TextStyle(fontSize: 14, color: AppCores.textoSecundario),
            ),
          ],
        ),
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(AppImagens.avatarAluno),
        ),
      ],
    );
  }
}
