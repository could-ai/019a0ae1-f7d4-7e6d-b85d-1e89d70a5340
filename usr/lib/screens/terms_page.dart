import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Termos de Uso')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Termos de Uso', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              const Text(
                'Ao usar o PredictFuturo, você concorda com estes termos. '
                'As previsões são probabilísticas e não garantem resultados. Use apenas para fins informativos.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}