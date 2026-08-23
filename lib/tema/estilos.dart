import 'package:flutter/material.dart';

/// Tokens de dimensão, sombra e decorações reaproveitáveis.
///
/// Mantém raios, espaçamentos e sombras consistentes entre as telas e permite
/// que os cards usem `const` (regra 5 / performance), evitando recriar a mesma
/// `BoxDecoration` a cada `build`.
abstract final class AppEstilos {
  // Raios de borda
  static const double raioCard = 24;
  static const double raioCardPequeno = 16;
  static const double raioPilula = 20;

  // Espaçamento padrão de tela
  static const double paddingTela = 24;
  static const EdgeInsets paddingDeTela = EdgeInsets.all(paddingTela);

  // Sombras suaves dos cards. `0x05000000` é o preto com ~2% de opacidade,
  // escrito em forma const para permitir cards `const`.
  static const List<BoxShadow> sombraCard = [
    BoxShadow(color: Color(0x05000000), blurRadius: 10, offset: Offset(0, 4)),
  ];
  static const List<BoxShadow> sombraCardPequeno = [
    BoxShadow(color: Color(0x05000000), blurRadius: 8, offset: Offset(0, 2)),
  ];

  // Decorações prontas para os cards brancos mais comuns.
  static const BoxDecoration cardBranco = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(raioCard)),
    boxShadow: sombraCard,
  );
  static const BoxDecoration cardBrancoPequeno = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(raioCardPequeno)),
    boxShadow: sombraCardPequeno,
  );
}
