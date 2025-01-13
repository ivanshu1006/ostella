import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../constants/api_constants.dart';
import '../services/logger_service.dart';

class ApiRepository {
  final Dio _dio;
  ApiRepository(
    this._dio,
  );
}
