import 'dart:convert';
import 'dart:async';
import 'package:modelslab/core/client.dart';
import 'package:http/http.dart' as http;

import 'package:modelslab/schemas/threed.dart'; // Your Dart schemas like Text23D, Image23D

import 'package:modelslab/core/apis/base.dart';

class ThreeD extends BaseAPI {
  late final String threeDBaseUrl;

  ThreeD({
    required Client client,
    bool enterprise = false,
    Map<String, dynamic> kwargs = const {},
  }) : super(
          client: client,
          baseUrl: '', // Will override below
          enterprise: enterprise,
          kwargs: kwargs,
        ) {
    if (enterprise) {
      threeDBaseUrl = '${client.baseUrl}v1/enterprise/3d/';
    } else {
      threeDBaseUrl = '${client.baseUrl}v6/3d/';
    }
  }

  Future<Map<String, dynamic>> textTo3d(Text23D schema) async {
    final endpoint = '${threeDBaseUrl}text_to_3d';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> imageTo3d(Image23D schema) async {
    final endpoint = '${threeDBaseUrl}image_to_3d';
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
