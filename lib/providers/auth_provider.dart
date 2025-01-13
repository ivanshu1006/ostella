import 'package:flutter/material.dart';
import '../repositories/frappe_repository.dart';
import '../services/dio_service.dart';

class AuthProvider with ChangeNotifier {
  static final AuthProvider _instance = AuthProvider._internal();

  factory AuthProvider() => _instance;

  AuthProvider._internal();

  final ApiRepository _apiRepository = ApiRepository(
    DioService.instance.client,
  );

  final bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;
}
