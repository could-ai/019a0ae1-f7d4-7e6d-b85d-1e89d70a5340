import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PredictFuturo'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.blueAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Previsões Futurísticas de Futebol',
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.blueAccent,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Precisão, Explicação e Confiança',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.pinkAccent,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text('Assinar por 100 MZN/mês'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Example Report Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                color: Colors.grey[900],
                shadowColor: Colors.blueAccent,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Exemplo de Relatório',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 10),
                      Text('Probabilidades: Casa 45%, Empate 25%, Fora 30%'),
                      const SizedBox(height: 10),
                      Text('Resumo: Time da casa tem vantagem histórica, mas lesões podem impactar.'),
                      const SizedBox(height: 10),
                      Image.network(
                        'https://via.placeholder.com/300x200?text=Futuristic+Image',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Footer
            Container(
              color: Colors.grey[850],
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/privacy'),
                    child: const Text('Política de Privacidade'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/terms'),
                    child: const Text('Termos de Uso'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/contact'),
                    child: const Text('Contato'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}