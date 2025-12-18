class AtividadeMoodle {
  final String titulo;
  final String prazo;
  final String status;
  final String? nota;

  AtividadeMoodle({
    required this.titulo,
    required this.prazo,
    required this.status,
    this.nota,
  });
}

class DadosAtividades {
  static List<AtividadeMoodle> obterProximas() {
    return [
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
  }

  static List<AtividadeMoodle> obterEntregues() {
    return [
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
}
