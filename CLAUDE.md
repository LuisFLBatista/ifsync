# ifsync

Aplicativo **Flutter/Dart** (SDK Dart `>=3.0.0 <4.0.0`). Este projeto é o **TCC** do Luis Fernando.
Fontes: `google_fonts` (Poppins). Ícones: `lucide_icons` + `cupertino_icons`. Lints: `flutter_lints`.

**O que é:** dashboard acadêmico do estudante do IF que reúne **Moodle + SUAP** num só lugar
(atividades, notas, frequência e perfil).

> Estado atual: **protótipo de UI**. Todos os dados são *mock* estático em `lib/dados/`.
> Ainda **não há backend, autenticação real nem integração** com Moodle/SUAP — as telas de
> login são visuais e levam direto para a `TelaBase`.

## Regras de código (definidas pelo autor)

> Nota: as regras originais foram escritas para Python. Como este projeto é Dart/Flutter,
> a **intenção** de cada regra foi mantida e as partes específicas de linguagem foram
> traduzidas para o equivalente em Dart (guia **Effective Dart**, reforçado pelo `flutter_lints`).

1. **Escreva código limpo e idiomático** — siga as convenções idiomáticas do Dart/Flutter
   (Effective Dart), não force padrões de outras linguagens.
2. **Priorize legibilidade e manutenção** em vez de ser extremamente conciso.
3. **Use nomes claros e descritivos** para variáveis, funções, classes e widgets.
   - `lowerCamelCase` para variáveis/funções, `UpperCamelCase` para tipos/classes/widgets,
     arquivos em `snake_case.dart` (padrão já usado no projeto).
4. **Faça o código modular e reutilizável** — extraia widgets, funções e helpers quando
   fizer sentido; quebre `build()` grandes em widgets menores.
5. **Otimize para performance e eficiência de memória** — use `const` sempre que possível,
   evite rebuilds desnecessários, prefira `ListView.builder` para listas longas.
6. **Siga o estilo do Effective Dart** (o "PEP 8 do Dart") e mantenha `flutter analyze` limpo.
7. **Evite duplicação de código (DRY)** — centralize estilos, cores e lógica repetida.
8. **Escreva como um desenvolvedor sênior com 10 anos de experiência.**

## Comandos

```bash
flutter pub get        # instala dependências
flutter run            # roda no emulador/dispositivo
flutter analyze        # checa lints (rodar antes de finalizar mudanças)
flutter test           # ainda não há testes
flutter build apk      # build Android
```

## Arquitetura

```
lib/
├── main.dart                  # AppDashboardEscolar — MaterialApp, tema, home: TelaLogin
├── tema/                      # design tokens (fonte única de cores/estilos)
│   ├── cores.dart             # AppCores — paleta semântica
│   ├── estilos.dart           # AppEstilos — raios, sombras, cardBranco...
│   └── imagens.dart           # AppImagens — URLs placeholder (avatares)
├── telas/                     # 1 tela = 1 Scaffold
│   ├── tela_login.dart        # entrada do app (visual; não autentica)
│   ├── tela_base.dart         # casca com BarraNavegacao + troca de telas por índice
│   ├── tela_inicial.dart      # índice 0
│   ├── tela_atividades.dart   # índice 1
│   ├── tela_desempenho.dart   # índice 2
│   ├── tela_perfil.dart       # índice 3
│   └── tela_detalhes.dart     # detalhe de disciplina (abas notas/atividades)
├── componentes/
│   ├── barra_navegacao.dart   # bottom nav compartilhada
│   ├── comuns/                # widgets reusados por VÁRIAS telas
│   │   ├── cabecalho_com_avatar.dart  # título + avatar (Atividades/Desempenho/Perfil)
│   │   ├── seletor_abas.dart          # pílula de abas genérica
│   │   └── etiqueta_status.dart       # badge status→cor de atividade
│   └── <tela_x>/              # componentes específicos da SUA tela
└── dados/
    └── dados_atividades.dart  # modelo (AtividadeMoodle) + listas const (proximas/entregues)
```

**Navegação:** `TelaLogin` → `TelaBase`. A `TelaBase` guarda `_indiceAtual` e mostra
`_telas[_indiceAtual]` no body, com a `BarraNavegacao` fixa embaixo. Sem rotas nomeadas;
telas de detalhe (ex.: `TelaDetalhes`) usam `Navigator.push`. Sem state management externo
(Provider/Bloc/Riverpod) — só `setState` local.

## Convenções observadas no código

- Idioma do código e comentários: **português** (nomes, variáveis, comentários, arquivos).
- Estrutura: telas em `lib/telas/`, componentes em `lib/componentes/<tela>/`.
- Telas têm prefixo `Tela` (`TelaInicial` em `tela_inicial.dart`). Sub-widgets usados só
  num arquivo são `class _Privados` no mesmo arquivo (ex.: `_ItemNavegacao`, `_TituloSecao`).
- Callbacks da API pública de um widget nomeados em PT (`aoClicar`, `aoSelecionar`,
  `aoTocar`); `onTap`/`VoidCallback` só internamente.
- Dados mock: modelo + classe com listas `static const` em `lib/dados/`. Não espalhe
  listas literais pelas telas — siga esse padrão.
- Estrutura de tela padrão: `Scaffold(backgroundColor: AppCores.fundo)` → `SafeArea` →
  `SingleChildScrollView(padding: AppEstilos.paddingDeTela)` → `Column(crossAxisAlignment:
  start)`, com `SizedBox(height: 24)` entre seções.

## Design system (tokens)

**Nunca use `Color(0xFF...)` solto nos widgets** — toda cor vem de `AppCores` (`lib/tema/cores.dart`),
todo raio/sombra de `AppEstilos` (`lib/tema/estilos.dart`). Se precisar de um tom novo,
adicione um token nomeado em vez de espalhar o hex.

| Uso                          | Token (`AppCores.`) | Cor          |
|------------------------------|---------------------|--------------|
| Fundo das telas              | `fundo`             | `0xFFF7F9FC` |
| Roxo primário (marca)        | `roxoPrimario`      | `0xFF7B61FF` |
| Roxo claro (seleção/destaque)| `roxoClaro`         | `0xFFEBE7FF` |
| Texto principal / títulos    | `textoPrimario`     | `0xFF1E293B` |
| Texto secundário             | `textoSecundario`   | `0xFF64748B` |
| Texto terciário / ícone off  | `textoTerciario`    | `0xFF94A3B8` |
| Trilhos / divisores / track  | `divisor`           | `0xFFF1F5F9` |
| Alerta — fundo / texto       | `alertaFundo` / `alertaTexto` | `0xFFFFEDD5` / `0xFF9A3412` |

> Tons semânticos extras (`sucesso`, `info`, `aviso`, `perigo`, `roxoTag`, badges de
> status etc.) também estão em `AppCores`. Veja o arquivo para a lista completa.

- **Fonte:** Poppins via `google_fonts` (no `textTheme` do `main.dart`).
- **Ícones:** `lucide_icons` (`LucideIcons.*`). Não misturar com `Icons.*` do Material.
- **Cards:** use `AppEstilos.cardBranco` (raio 24 + sombra) / `cardBrancoPequeno` (raio 16),
  ou `AppEstilos.sombraCard` / `sombraCardPequeno` quando precisar de borda própria.
- **Pílulas / itens menores:** `AppEstilos.raioPilula` (20). **Padding de tela:** `paddingDeTela` (24).

## Dívidas técnicas conhecidas

- Sem camada de dados real — `DadosAtividades` expõe listas fixas (e hoje está sem uso;
  as listas ainda são literais dentro dos componentes); integração Moodle/SUAP é futuro.
- Sem testes (`flutter test` vazio).
- Rodar `flutter analyze` antes de concluir mudanças (deve ficar **sem issues**).
