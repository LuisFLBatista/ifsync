/// Modelo de uma atividade do Moodle.
///
/// `const` para permitir listas imutáveis e compartilháveis (regra 5).
class AtividadeMoodle {
  final String titulo;
  final String prazo;
  final String status;
  final String? nota;

  const AtividadeMoodle({
    required this.titulo,
    required this.prazo,
    required this.status,
    this.nota,
  });
}

/// Fonte de dados *mock* enquanto não há integração real com o Moodle/SUAP.
abstract final class DadosAtividades {
  static const List<AtividadeMoodle> proximas = [
    AtividadeMoodle(
      titulo: 'Quiz 5',
      prazo: 'Prazo: 22/05 • Moodle',
      status: 'A fazer',
    ),
    AtividadeMoodle(
      titulo: 'Fórum: Recursão',
      prazo: 'Prazo: 28/05 • Moodle',
      status: 'Opcional',
    ),
    AtividadeMoodle(
      titulo: 'Projeto Final - Etapa 1',
      prazo: 'Prazo: 05/06 • Moodle',
      status: 'Em andamento',
    ),
  ];

  static const List<AtividadeMoodle> entregues = [
    AtividadeMoodle(
      titulo: 'T1 - Vetores',
      prazo: 'Entregue em 26/04',
      status: 'Entregue',
      nota: '9,0',
    ),
    AtividadeMoodle(
      titulo: 'P1',
      prazo: 'Aplicada em 12/04',
      status: 'Entregue',
      nota: '8,0',
    ),
  ];
}
