import 'package:flutter/material.dart';
import '../componentes/tela_perfil/cabecalho_perfil.dart';
import '../componentes/tela_perfil/info_usuario.dart';
import '../componentes/tela_perfil/menu_configuracoes.dart';
import '../componentes/tela_perfil/secao_conquistas.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

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
              CabecalhoPerfil(),
              SizedBox(height: 24),
              InfoUsuario(),
              SizedBox(height: 24),
              _TituloSecao('Notificações'),
              SizedBox(height: 12),
              MenuNotificacoes(),
              SizedBox(height: 24),
              _TituloSecao('Contas'),
              SizedBox(height: 12),
              MenuContas(),
              SizedBox(height: 24),
              _TituloSecao('Conquistas'),
              SizedBox(height: 12),
              SecaoConquistas(),
              SizedBox(height: 24),
              _TituloSecao('Aparência'),
              SizedBox(height: 12),
              MenuAparencia(),
              SizedBox(height: 24),
              _TituloSecao('Sobre'),
              SizedBox(height: 12),
              MenuSobre(),
              SizedBox(height: 32),
              BotaoSair(),
              // Espaço extra para o final da rolagem não ficar colado na navbar
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

class _TituloSecao extends StatelessWidget {
  final String titulo;
  const _TituloSecao(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFF1E293B),
      ),
    );
  }
}
