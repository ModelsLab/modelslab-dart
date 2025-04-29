import 'dart:convert';
import 'dart:async';
import 'package:modelslab/core/client.dart';
import 'package:http/http.dart' as http;

import 'package:modelslab/schemas/video.dart'; // Your Dart schemas like Text2Video, Image2Video

import 'package:modelslab/core/apis/base.dart';

class Video extends BaseAPI {
  late final String videoBaseUrl;

  Video({
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
      videoBaseUrl = '${client.baseUrl}v1/enterprise/video/';
    } else {
      videoBaseUrl = '${client.baseUrl}v6/video/';
    }
  }

  Future<Map<String, dynamic>> textToVideo(Text2Video schema) async {
    final endpoint = '${videoBaseUrl}text2video';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> imageToVideo(Image2Video schema) async {
    final endpoint = '${videoBaseUrl}img2video';
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
