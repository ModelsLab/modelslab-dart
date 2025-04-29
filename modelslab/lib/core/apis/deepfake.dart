import 'dart:convert';
import 'dart:async';
import 'package:modelslab/core/client.dart';
import 'package:http/http.dart' as http;

import 'package:modelslab/schemas/deepfake.dart'; // Your Dart schemas like SingleVideoSwap, SpecificFaceSwap etc.

import 'package:modelslab/core/apis/base.dart';

class DeepFake extends BaseAPI {
  late final String deepfakeBaseUrl;

  DeepFake({
    required Client client,
    bool enterprise = false,
    Map<String, dynamic> kwargs = const {},
  }) : super(
          client: client,
          baseUrl: '', // Will override in constructor
          enterprise: enterprise,
          kwargs: kwargs,
        ) {
    if (enterprise) {
      deepfakeBaseUrl = '${client.baseUrl}v1/enterprise/deepfake/';
    } else {
      deepfakeBaseUrl = '${client.baseUrl}v6/deepfake/';
    }
  }

  Future<Map<String, dynamic>> specificFaceSwap(SpecificFaceSwap schema) async {
    final endpoint = '${deepfakeBaseUrl}single_face_swap';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> multipleFaceSwap(MultipleFaceSwap schema) async {
    final endpoint = '${deepfakeBaseUrl}multiple_face_swap';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> multipleVideoSwap(
      SpecificVideoSwap schema) async {
    final endpoint = '${deepfakeBaseUrl}specific_video_swap';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> singleVideoSwap(SingleVideoSwap schema) async {
    final endpoint = '${deepfakeBaseUrl}single_video_swap';
    return await _post(endpoint, data: schema.toJson());
  }

  /// Internal POST helper (reused)
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
