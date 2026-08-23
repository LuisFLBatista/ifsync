import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../tema/cores.dart';
import '../../tema/estilos.dart';

class SecaoPermissoes extends StatefulWidget {
  const SecaoPermissoes({super.key});

  @override
  State<SecaoPermissoes> createState() => _SecaoPermissoesState();
}

class _SecaoPermissoesState extends State<SecaoPermissoes> {
  bool _notificacoes = false;
  bool _calendario = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppEstilos.cardBranco,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Permissões',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppCores.textoPrimario),
          ),
          const SizedBox(height: 16),
          _ItemPermissao(
            icone: LucideIcons.bell,
            titulo: 'Notificações Push',
            descricao:
                'Receba lembretes de prazos, notas publicadas e alertas proativos.',
            valor: _notificacoes,
            onChanged: (v) => setState(() => _notificacoes = v),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(height: 1, color: AppCores.divisor),
          ),
          _ItemPermissao(
            icone: LucideIcons.calendar,
            titulo: 'Acesso ao Calendário',
            descricao:
                'Sincronize eventos e entregas com o calendário do seu dispositivo.',
            valor: _calendario,
            onChanged: (v) => setState(() => _calendario = v),
          ),
        ],
      ),
    );
  }
}

class _ItemPermissao extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String descricao;
  final bool valor;
  final ValueChanged<bool> onChanged;

  const _ItemPermissao({
    required this.icone,
    required this.titulo,
    required this.descricao,
    required this.valor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icone, size: 20, color: AppCores.textoPrimario),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppCores.textoPrimario)),
              const SizedBox(height: 4),
              Text(
                descricao,
                style: const TextStyle(
                    fontSize: 12, color: AppCores.textoSecundario, height: 1.3),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Switch(
          value: valor,
          activeThumbColor: AppCores.roxoPrimario,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
