import 'package:flutter/material.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

/// Seletor de abas em formato de "pílula": uma faixa arredondada com abas de
/// largura igual, onde a aba ativa ganha destaque em roxo.
///
/// Substitui três seletores quase idênticos (Atividades, Desempenho e
/// Detalhes) por um único widget configurável (regra 7 / DRY).
class SeletorAbas extends StatelessWidget {
  final List<String> abas;
  final int indiceAtual;
  final ValueChanged<int> aoSelecionar;

  /// Cor da faixa de fundo. Em telas internas costuma vir mais suave.
  final Color corFundo;

  /// Sombra sob a aba ativa. Algumas variações dispensam o destaque.
  final bool comSombra;

  /// Tamanho da fonte dos rótulos (rótulos longos pedem fonte menor).
  final double tamanhoFonte;

  const SeletorAbas({
    super.key,
    required this.abas,
    required this.indiceAtual,
    required this.aoSelecionar,
    this.corFundo = AppCores.roxoClaro,
    this.comSombra = true,
    this.tamanhoFonte = 13,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: corFundo,
        borderRadius: BorderRadius.circular(AppEstilos.raioPilula),
      ),
      child: Row(
        children: [
          for (var indice = 0; indice < abas.length; indice++)
            Expanded(
              child: _Aba(
                rotulo: abas[indice],
                selecionada: indice == indiceAtual,
                comSombra: comSombra,
                tamanhoFonte: tamanhoFonte,
                aoTocar: () => aoSelecionar(indice),
              ),
            ),
        ],
      ),
    );
  }
}

class _Aba extends StatelessWidget {
  final String rotulo;
  final bool selecionada;
  final bool comSombra;
  final double tamanhoFonte;
  final VoidCallback aoTocar;

  const _Aba({
    required this.rotulo,
    required this.selecionada,
    required this.comSombra,
    required this.tamanhoFonte,
    required this.aoTocar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoTocar,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: selecionada ? AppCores.roxoPrimario : Colors.transparent,
          borderRadius: BorderRadius.circular(AppEstilos.raioCardPequeno),
          boxShadow: selecionada && comSombra
              ? [
                  BoxShadow(
                    color: AppCores.roxoPrimario.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ]
              : null,
        ),
        child: Text(
          rotulo,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: selecionada ? Colors.white : AppCores.textoSecundario,
            fontWeight: FontWeight.w600,
            fontSize: tamanhoFonte,
          ),
        ),
      ),
    );
  }
}
