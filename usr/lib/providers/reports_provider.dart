import 'package:flutter/material.dart';

class Report {
  final String title;
  final String probabilities;
  final String summary;
  final String explanation;
  final List<String> factors;
  final String imageUrl;

  Report({
    required this.title,
    required this.probabilities,
    required this.summary,
    required this.explanation,
    required this.factors,
    required this.imageUrl,
  });
}

class ReportsProvider with ChangeNotifier {
  final List<Report> _reports = [
    Report(
      title: 'Relatório Diário — Campeonato Moçambicano — 2024-10-22',
      probabilities: 'Casa 50% (45-55%), Empate 20% (15-25%), Fora 30% (25-35%)',
      summary: 'Time da casa apresenta forma superior. Lesões no adversário podem favorecer. Expectativa de vitória caseira com margem estreita.',
      explanation: 'Com base em análise estatística dos últimos 10 jogos, o time da casa tem 65% de aproveitamento em casa. Fatores como xG (1.8 vs 1.2) indicam vantagem ofensiva. Lesões no zagueiro titular do visitante reduzem a defesa em 20%. Forma recente mostra 7 vitórias em 10 jogos para o mandante, enquanto o visitante teve 4 derrotas consecutivas. Considerando motivação para o título, esperamos um jogo competitivo mas com ligeira vantagem para o time local.',
      factors: ['xG: 1.8 vs 1.2', 'Lesões: Zagueiro titular ausente', 'Forma: 7-3-0 vs 3-2-5', 'Motivação: Disputa pelo título'],
      imageUrl: 'https://via.placeholder.com/400x300?text=Futuristic+Soccer+Prediction',
    ),
    // Adicionar mais relatórios mockados conforme necessário
  ];

  List<Report> get reports => _reports;
}