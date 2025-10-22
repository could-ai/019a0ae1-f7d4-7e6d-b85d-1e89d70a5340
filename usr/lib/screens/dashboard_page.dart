import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/reports_provider.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final reportsProvider = Provider.of<ReportsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Painel do Assinante'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => Navigator.pushNamed(context, '/'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Status da Assinatura: Ativa', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Simulação de renovação - em produção, integraria com pagamento
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Renovação solicitada - em produção, conectaria ao Supabase')),
                );
              },
              child: const Text('Renovar Assinatura'),
            ),
            const SizedBox(height: 20),
            Text('Histórico de Relatórios', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: reportsProvider.reports.length,
                itemBuilder: (context, index) {
                  final report = reportsProvider.reports[index];
                  return Card(
                    color: Colors.grey[900],
                    child: ExpansionTile(
                      title: Text(report.title),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Probabilidades: ${report.probabilities}'),
                              const SizedBox(height: 10),
                              Text('Resumo: ${report.summary}'),
                              const SizedBox(height: 10),
                              Text('Explicação: ${report.explanation}'),
                              const SizedBox(height: 10),
                              Text('Fatores: ${report.factors.join(', ')}'),
                              const SizedBox(height: 10),
                              Image.network(report.imageUrl, height: 200, fit: BoxFit.cover),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}