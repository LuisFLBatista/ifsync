import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class CardLoginPlataforma extends StatelessWidget {
  final String titulo;
  final String labelUsuario;
  final String placeholderUsuario;
  final String labelSenha;
  final IconData iconeUsuario;

  const CardLoginPlataforma({
    super.key,
    required this.titulo,
    required this.labelUsuario,
    required this.placeholderUsuario,
    required this.labelSenha,
    required this.iconeUsuario,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppEstilos.cardBranco,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppCores.textoPrimario),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _InputCampo(
                  label: labelUsuario,
                  placeholder: placeholderUsuario,
                  icone: iconeUsuario,
                  obscureText: false,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _InputCampo(
                  label: labelSenha,
                  placeholder: '••••••••',
                  icone: LucideIcons.lock,
                  obscureText: true,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _InputCampo extends StatelessWidget {
  final String label;
  final String placeholder;
  final IconData icone;
  final bool obscureText;

  const _InputCampo({
    required this.label,
    required this.placeholder,
    required this.icone,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              color: AppCores.textoSecundario,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: AppCores.borda),
            borderRadius: BorderRadius.circular(AppEstilos.raioCard),
          ),
          child: Row(
            children: [
              Icon(icone, size: 16, color: AppCores.textoTerciario),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  placeholder,
                  style: const TextStyle(
                      fontSize: 13, color: AppCores.textoTerciario),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
