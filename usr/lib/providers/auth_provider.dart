import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isLoggedIn = false;
  String? _userEmail;

  bool get isLoggedIn => _isLoggedIn;
  String? get userEmail => _userEmail;

  void login(String email, String password) {
    // Simulação - em produção, autenticaria com Supabase
    _isLoggedIn = true;
    _userEmail = email;
    notifyListeners();
  }

  void signup(String email, String password) {
    // Simulação - em produção, cadastraria com Supabase
    _isLoggedIn = true;
    _userEmail = email;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    _userEmail = null;
    notifyListeners();
  }
}