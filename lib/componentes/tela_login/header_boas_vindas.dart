import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HeaderBoasVindas extends StatelessWidget {
  const HeaderBoasVindas({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xFFEBE7FF),
                  shape: BoxShape.circle,
                ),
                child: const Icon(LucideIcons.sparkles,
                    size: 20, color: Color(0xFF7B61FF)),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bem-vindo(a)!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Unifique Moodle + SUAP em um só lugar',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF64748B),
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        const Icon(LucideIcons.helpCircle, size: 24, color: Color(0xFF94A3B8)),
      ],
    );
  }
}
