import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        scaffoldBackgroundColor: const Color(0xFFF7F9FC),
        primaryColor: const Color(0xFF7B61FF),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const TelaLogin(),
    );
  }
}
