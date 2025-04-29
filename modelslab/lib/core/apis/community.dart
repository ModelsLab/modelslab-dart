import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:modelslab/core/client.dart';
import 'package:modelslab/core/apis/base.dart';
import 'package:modelslab/schemas/community.dart';

class Community extends BaseAPI {
  late final String communityBaseUrl;

  Community({
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
      communityBaseUrl = '${client.baseUrl}v1/enterprise/images/text2img/';
    } else {
      communityBaseUrl = '${client.baseUrl}v6/images/text2img/';
    }
  }

  Future<Map<String, dynamic>> textToImage(Text2Image schema) async {
    final endpoint = '${communityBaseUrl}text2img';
    return await _post(endpoint, schema.toJson());
  }

  Future<Map<String, dynamic>> imageToImage(Image2Image schema) async {
    final endpoint = '${communityBaseUrl}img2img';
    return await _post(endpoint, schema.toJson());
  }

  Future<Map<String, dynamic>> inpainting(Inpainting schema) async {
    final endpoint = '${communityBaseUrl}inpaint';
    return await _post(endpoint, schema.toJson());
  }

  Future<Map<String, dynamic>> controlnet(ControlNet schema) async {
    final endpoint = '${communityBaseUrl}controlnet';
    return await _post(endpoint, schema.toJson());
  }

  Future<Map<String, dynamic>> _post(
      String url, Map<String, dynamic> data) async {
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
