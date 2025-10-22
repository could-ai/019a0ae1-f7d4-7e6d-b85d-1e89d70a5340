import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/signup_page.dart';
import 'screens/dashboard_page.dart';
import 'screens/admin_panel.dart';
import 'screens/privacy_policy_page.dart';
import 'screens/terms_page.dart';
import 'screens/contact_page.dart';
import 'providers/auth_provider.dart';
import 'providers/reports_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ReportsProvider()),
      ],
      child: MaterialApp(
        title: 'PredictFuturo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blueAccent,
          accentColor: Colors.pinkAccent,
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 32,
            ),
            bodyLarge: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white70,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              shadowColor: Colors.blueAccent.withOpacity(0.5),
              elevation: 10,
            ),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/login': (context) => const LoginPage(),
          '/signup': (context) => const SignupPage(),
          '/dashboard': (context) => const DashboardPage(),
          '/admin': (context) => const AdminPanel(),
          '/privacy': (context) => const PrivacyPolicyPage(),
          '/terms': (context) => const TermsPage(),
          '/contact': (context) => const ContactPage(),
        },
      ),
    );
  }
}