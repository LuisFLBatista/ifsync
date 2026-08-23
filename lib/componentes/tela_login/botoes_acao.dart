import 'package:flutter/material.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';
import '../../telas/tela_base.dart';

class BotoesAcao extends StatelessWidget {
  const BotoesAcao({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            // Login simulado: substitui a tela de login pela tela principal.
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const TelaBase()),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppCores.roxoPrimario,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppEstilos.raioCard)),
              elevation: 0,
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            child: const Text('Conectar'),
          ),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: AppCores.textoPrimario,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            backgroundColor: AppCores.divisor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppEstilos.raioCard)),
          ),
          child: const SizedBox(
            width: double.infinity,
            child: Text(
              'Ler termos e privacidade',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Usamos suas credenciais apenas para validação segura e coleta inicial de dados.',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 11, color: AppCores.textoTerciario, height: 1.4),
        ),
      ],
    );
  }
}
