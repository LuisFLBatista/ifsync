import 'package:flutter/material.dart';
import '../../telas/tela_base.dart'; // Importante para a navegação

class BotoesAcao extends StatelessWidget {
  const BotoesAcao({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // AÇÃO DE LOGIN: Substitui a tela de login pela tela principal
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TelaBase()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF7B61FF),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)), // Bem arredondado
              elevation: 0,
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            child: const Text('Conectar'),
          ),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {
            // Ação para ler termos
          },
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF1E293B),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            backgroundColor: const Color(0xFFF1F5F9), // Fundo cinza claro
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
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
          style: TextStyle(fontSize: 11, color: Color(0xFF94A3B8), height: 1.4),
        ),
      ],
    );
  }
}