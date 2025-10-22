import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Política de Privacidade')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Política de Privacidade', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              const Text(
                'Coletamos e armazenamos dados pessoais de forma criptografada, seguindo padrões GDPR e LGPD. '
                'Utilizamos os dados apenas para prestação do serviço e não compartilhamos com terceiros sem consentimento.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}