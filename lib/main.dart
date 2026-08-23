import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tema/cores.dart';
import 'telas/tela_login.dart';

void main() {
  runApp(const AppDashboardEscolar());
}

class AppDashboardEscolar extends StatelessWidget {
  const AppDashboardEscolar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard Escolar',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppCores.fundo,
        primaryColor: AppCores.roxoPrimario,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const TelaLogin(),
    );
  }
}
