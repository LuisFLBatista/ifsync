import 'package:flutter/material.dart';

/// Tokens de cor do app.
///
/// Centraliza a paleta para evitar `Color(0xFF...)` espalhado pelos widgets
/// (regra 7 / DRY). Os nomes descrevem o *uso* da cor, não o tom — assim, se a
/// identidade visual mudar, basta editar aqui.
abstract final class AppCores {
  // Superfícies
  static const Color fundo = Color(0xFFF7F9FC);

  // Marca (roxo)
  static const Color roxoPrimario = Color(0xFF7B61FF);
  static const Color roxoClaro = Color(0xFFEBE7FF); // seleção / destaque
  static const Color roxoClaroAlt = Color(0xFFF3F0FF); // fundo do card de entrega
  static const Color roxoChip = Color(0xFFD8D3F7); // chip de horário
  static const Color roxoTag = Color(0xFFF3E8FF); // tag / peso de avaliação
  static const Color roxoEscuro = Color(0xFF6B21A8); // texto sobre tags roxas

  // Texto
  static const Color textoPrimario = Color(0xFF1E293B);
  static const Color textoSecundario = Color(0xFF64748B);
  static const Color textoTerciario = Color(0xFF94A3B8);
  static const Color textoInfo = Color(0xFF475569);

  // Linhas, divisores e inputs
  static const Color divisor = Color(0xFFF1F5F9); // trilhos, tracks, cinza claro
  static const Color borda = Color(0xFFE2E8F0); // borda de input

  // Alerta (laranja)
  static const Color alertaFundo = Color(0xFFFFEDD5);
  static const Color alertaTexto = Color(0xFF9A3412);

  // Semânticas
  static const Color perigo = Color(0xFFFF5F5F); // sair / ações destrutivas
  static const Color sucesso = Color(0xFF10B981); // verde (frequência alta)
  static const Color info = Color(0xFF3B82F6); // azul
  static const Color aviso = Color(0xFFF59E0B); // amarelo

  // Badges de status de atividade
  static const Color statusFazer = Color(0xFFDDD6FE);
  static const Color statusFazerTexto = Color(0xFF6B21A8);
  static const Color statusOpcional = Color(0xFFE0E7FF);
  static const Color statusOpcionalTexto = Color(0xFF4338CA);
}
