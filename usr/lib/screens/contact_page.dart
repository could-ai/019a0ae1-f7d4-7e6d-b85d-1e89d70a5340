import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contato')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contato', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 20),
            const Text('E-mail: contato@predictfuturo.com'),
            const Text('Telefone: +258 879037028'),
            const Text('Endereço: Maputo, Moçambique'),
          ],
        ),
      ),
    );
  }
}