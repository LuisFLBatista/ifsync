import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

// --- WIDGETS AUXILIARES ---

class _ItemConfiguracao extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String subtitulo;
  final Widget trailing; // O que vai no final (Switch, Seta, etc)

  const _ItemConfiguracao({
    required this.icone,
    required this.titulo,
    required this.subtitulo,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color:
            const Color(0xFFEBE7FF).withOpacity(0.4), // Fundo roxo muito claro
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icone, size: 20, color: const Color(0xFF1E293B)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFF1E293B),
                  ),
                ),
                if (subtitulo.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    subtitulo,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF64748B),
                    ),
                  ),
                ]
              ],
            ),
          ),
          trailing,
        ],
      ),
    );
  }
}

// --- SEÇÕES DO MENU ---

class MenuNotificacoes extends StatefulWidget {
  const MenuNotificacoes({super.key});

  @override
  State<MenuNotificacoes> createState() => _MenuNotificacoesState();
}

class _MenuNotificacoesState extends State<MenuNotificacoes> {
  bool _alertasNotas = true;
  bool _lembretesPrazos = true;
  bool _resumoSemanal = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ItemConfiguracao(
          icone: LucideIcons.bell,
          titulo: 'Alertas de novas notas',
          subtitulo: 'Desative para ser alertado apenas sobre prazos',
          trailing: Switch(
            value: _alertasNotas,
            activeThumbColor: const Color(0xFF7B61FF),
            onChanged: (v) => setState(() => _alertasNotas = v),
          ),
        ),
        _ItemConfiguracao(
          icone: LucideIcons.calendar,
          titulo: 'Lembretes de prazos',
          subtitulo: 'Receba avisos de entregas e provas',
          trailing: Switch(
            value: _lembretesPrazos,
            activeThumbColor: const Color(0xFF7B61FF),
            onChanged: (v) => setState(() => _lembretesPrazos = v),
          ),
        ),
        _ItemConfiguracao(
          icone: LucideIcons.mail,
          titulo: 'Resumo semanal por e-mail',
          subtitulo: 'Envie um consolidado toda segunda',
          trailing: Switch(
            value: _resumoSemanal,
            activeThumbColor: const Color(0xFF7B61FF),
            onChanged: (v) => setState(() => _resumoSemanal = v),
          ),
        ),
      ],
    );
  }
}

class MenuContas extends StatelessWidget {
  const MenuContas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _ItemConfiguracao(
          icone: LucideIcons.key,
          titulo: 'Minha senha do SUAP mudou',
          subtitulo: 'Atualize suas credenciais de acesso',
          trailing: Icon(LucideIcons.chevronRight,
              size: 20, color: Color(0xFF94A3B8)),
        ),
        _ItemConfiguracao(
          icone: LucideIcons.link,
          titulo: 'Vincular/Desvincular Moodle',
          subtitulo: 'Gerencie a integração das atividades',
          trailing: Icon(LucideIcons.chevronRight,
              size: 20, color: Color(0xFF94A3B8)),
        ),
      ],
    );
  }
}

class MenuAparencia extends StatelessWidget {
  const MenuAparencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: [
          const Icon(LucideIcons.moon, size: 20, color: Color(0xFF1E293B)),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tema',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  'Claro / Escuro',
                  style: TextStyle(fontSize: 11, color: Color(0xFF64748B)),
                ),
              ],
            ),
          ),
          // Simulação de Segmented Control
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              children: [
                _OpcaoTema('Claro', true),
                _OpcaoTema('Escuro', false),
                _OpcaoTema('Sistema', false),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _OpcaoTema extends StatelessWidget {
  final String label;
  final bool selecionado;
  const _OpcaoTema(this.label, this.selecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selecionado ? const Color(0xFFEBE7FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color:
              selecionado ? const Color(0xFF7B61FF) : const Color(0xFF64748B),
        ),
      ),
    );
  }
}

class MenuSobre extends StatelessWidget {
  const MenuSobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFEBE7FF).withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Versão',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFF1E293B))),
              Text('1.2.0 (build 34)',
                  style: TextStyle(color: Color(0xFF64748B))),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFEBE7FF).withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ajuda & Suporte',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E293B))),
                    Text('Central de ajuda e contato',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF64748B))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BotaoSair extends StatelessWidget {
  const BotaoSair({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFF5F5F), // Vermelho claro/salmão
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 0,
        ),
        child: const Text('Sair da Conta',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
    );
  }
}
