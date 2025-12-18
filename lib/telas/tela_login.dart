import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../componentes/tela_login/header_boas_vindas.dart';
import '../componentes/tela_login/card_informativo.dart';
import '../componentes/tela_login/card_login_plataforma.dart';
import '../componentes/tela_login/secao_permissoes.dart';
import '../componentes/tela_login/botoes_acao.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F9FC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderBoasVindas(),
              SizedBox(height: 24),
              CardInformativo(),
              SizedBox(height: 24),
              // Login Moodle
              CardLoginPlataforma(
                titulo: 'Entrar no Moodle',
                labelUsuario: 'Usuário do Moodle',
                placeholderUsuario: 'ex.: aluno.if',
                labelSenha: 'Senha',
                iconeUsuario: LucideIcons.user,
              ),
              SizedBox(height: 16),
              // Login SUAP
              CardLoginPlataforma(
                titulo: 'Entrar no SUAP',
                labelUsuario: 'Usuário do SUAP',
                placeholderUsuario: 'ex.: matricula',
                labelSenha: 'Senha',
                iconeUsuario: LucideIcons.user,
              ),
              SizedBox(height: 24),
              SecaoPermissoes(),
              SizedBox(height: 32),
              BotoesAcao(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
