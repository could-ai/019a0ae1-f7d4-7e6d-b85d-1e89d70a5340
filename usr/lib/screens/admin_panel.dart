import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // Dados mockados - em produção, conectaria ao Supabase
    final subscribers = [
      {'name': 'João Silva', 'status': 'Ativo', 'expiration': '2024-12-01'},
      {'name': 'Maria Santos', 'status': 'Suspenso', 'expiration': '2024-11-15'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Painel do Administrador')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lista de Assinantes', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: subscribers.length,
                itemBuilder: (context, index) {
                  final sub = subscribers[index];
                  return Card(
                    color: Colors.grey[900],
                    child: ListTile(
                      title: Text(sub['name']!),
                      subtitle: Text('Status: ${sub['status']}, Expira: ${sub['expiration']}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.refresh),
                            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Renovação forçada - em produção, conectaria ao Supabase')),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.block),
                            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Suspenso - em produção, conectaria ao Supabase')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text('Logs de Geração e Acurácia', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 10),
            Card(
              color: Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Última geração: 2024-10-22 08:00 UTC\nAcurácia histórica: 65%\nRelatórios entregues: 150'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}