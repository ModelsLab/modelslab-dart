import 'dart:convert';
import 'dart:async';
import 'package:modelslab/core/client.dart';
import 'package:http/http.dart' as http;

import 'package:modelslab/schemas/realtime.dart'; // Dart schemas like RealtimeText2ImageSchema, etc.
import 'package:modelslab/core/apis/base.dart';

class Realtime extends BaseAPI {
  late final String realtimeBaseUrl;

  Realtime({
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
      realtimeBaseUrl = '${client.baseUrl}v1/enterprise/realtime/';
    } else {
      realtimeBaseUrl = '${client.baseUrl}v6/realtime/';
    }
  }

  Future<Map<String, dynamic>> textToImage(
      RealtimeText2ImageSchema schema) async {
    final endpoint = '${realtimeBaseUrl}text2img';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> imageToImage(
      RealtimeImage2ImageSchema schema) async {
    final endpoint = '${realtimeBaseUrl}img2img';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> inpainting(
      RealtimeInpaintingSchema schema) async {
    final endpoint = '${realtimeBaseUrl}inpaint';
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
