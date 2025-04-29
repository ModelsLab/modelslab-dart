import 'dart:convert';
import 'dart:async';
import 'package:modelslab/core/client.dart';
import 'package:http/http.dart' as http;

import 'package:modelslab/schemas/interior.dart'; // Dart schemas like InteriorSchema, RoomDecoratorSchema, etc.

import 'package:modelslab/core/apis/base.dart';

class Interior extends BaseAPI {
  late final String interiorBaseUrl;

  Interior({
    required Client client,
    bool enterprise = false,
    Map<String, dynamic> kwargs = const {},
  }) : super(
          client: client,
          baseUrl: '',
          enterprise: enterprise,
          kwargs: kwargs,
        ) {
    if (enterprise) {
      interiorBaseUrl = '${client.baseUrl}v1/enterprise/interior/';
    } else {
      interiorBaseUrl = '${client.baseUrl}v6/interior/';
    }
  }

  Future<Map<String, dynamic>> interior(InteriorSchema schema) async {
    final endpoint = '${interiorBaseUrl}make';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> roomDecorator(RoomDecoratorSchema schema) async {
    final endpoint = '${interiorBaseUrl}room_decorator';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> floor(FloorSchema schema) async {
    final endpoint = '${interiorBaseUrl}floor_planning';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> scenario(ScenarioSchema schema) async {
    final endpoint = '${interiorBaseUrl}scenario';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> exteriorRestorer(ExteriorSchema schema) async {
    final endpoint = '${interiorBaseUrl}exterior_restorer';
    return await _post(endpoint, data: schema.toJson());
  }

  /// Internal POST helper
  Future<Map<String, dynamic>> _post(String url,
      {required Map<String, dynamic> data}) async {
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
          'Failed POST request: ${response.statusCode} ${response.body}');
    }
  }
}
