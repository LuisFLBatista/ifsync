import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class SecaoEstatisticas extends StatelessWidget {
  const SecaoEstatisticas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: _CardDesempenho()),
        SizedBox(width: 16),
        Expanded(child: _CardRiscoFaltas()),
      ],
    );
  }
}

class _CardDesempenho extends StatelessWidget {
  const _CardDesempenho();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppEstilos.raioCard),
        border: Border.all(color: Colors.white),
        boxShadow: AppEstilos.sombraCard,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(LucideIcons.medal, size: 18, color: AppCores.textoPrimario),
                  SizedBox(width: 8),
                  Text('Desempenho',
                      style: TextStyle(
                          fontSize: 13, color: AppCores.textoSecundario)),
                ],
              ),
              Icon(LucideIcons.chevronRight,
                  size: 16, color: AppCores.textoTerciario),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            '8,6',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: 0.86,
            backgroundColor: AppCores.divisor,
            color: AppCores.roxoPrimario,
            minHeight: 6,
            borderRadius: BorderRadius.circular(10),
          ),
          const SizedBox(height: 8),
          const Text('Média geral (SUAP)',
              style: TextStyle(fontSize: 12, color: AppCores.textoTerciario)),
        ],
      ),
    );
  }
}

class _CardRiscoFaltas extends StatelessWidget {
  const _CardRiscoFaltas();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppCores.alertaFundo,
        borderRadius: BorderRadius.circular(AppEstilos.raioCard),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(LucideIcons.alertTriangle,
                  size: 18, color: AppCores.alertaTexto),
              SizedBox(width: 8),
              Text('Risco de faltas',
                  style: TextStyle(fontSize: 13, color: AppCores.alertaTexto)),
            ],
          ),
          SizedBox(height: 12),
          Text(
            '75%',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppCores.alertaTexto),
          ),
          SizedBox(height: 8),
          Text(
            'Cálculo I • perto do limite',
            style: TextStyle(
                fontSize: 12, color: AppCores.alertaTexto, height: 1.5),
          ),
        ],
      ),
    );
  }
}
