import 'dart:async';
import 'dart:convert';
import 'package:modelslab/core/client.dart'; // Your Client class
import 'package:http/http.dart' as http;

class BaseAPI {
  final Client client;
  final String baseUrl;
  final bool enterprise;
  final Map<String, dynamic> kwargs;

  const BaseAPI({
    required this.client,
    required this.baseUrl,
    this.enterprise = false,
    this.kwargs = const {},
  });

  /// Fetch task result by ID
  Future<Map<String, dynamic>> fetch(String id) async {
    final endpoint = '$baseUrl/fetch/$id';
    Map<String, dynamic>? response;

    for (int i = 0; i < client.fetchRetry; i++) {
      response = await _post(
        endpoint,
        data: {'key': client.apiKey},
      );

      if (response['status'] == 'success') {
        break;
      } else {
        await Future.delayed(Duration(seconds: client.fetchTimeout));
      }
    }

    if (response == null) {
      throw Exception('Failed to fetch task response.');
    }

    return response;
  }

  /// Get system details (Enterprise only)
  Future<Map<String, dynamic>> systemDetails() async {
    _requireEnterprise();
    final endpoint = '$baseUrl/system_details';
    return await _post(endpoint, data: {'key': client.apiKey});
  }

  /// Restart server (Enterprise only)
  Future<Map<String, dynamic>> restart() async {
    _requireEnterprise();
    final endpoint = '$baseUrl/restart_server';
    return await _post(endpoint, data: {'key': client.apiKey});
  }

  /// Update server (Enterprise only)
  Future<Map<String, dynamic>> update() async {
    _requireEnterprise();
    final endpoint = '$baseUrl/update';
    return await _post(endpoint, data: {'key': client.apiKey});
  }

  /// Clear cache (Enterprise only)
  Future<Map<String, dynamic>> clearCache() async {
    _requireEnterprise();
    final endpoint = '$baseUrl/clear_cache';
    return await _post(endpoint, data: {'key': client.apiKey});
  }

  /// Clear task queue (Enterprise only)
  Future<Map<String, dynamic>> clearQueue() async {
    _requireEnterprise();
    final endpoint = '$baseUrl/clear_queue';
    return await _post(endpoint, data: {'key': client.apiKey});
  }

  /// Internal helper method to require enterprise access
  void _requireEnterprise() {
    if (!enterprise) {
      throw Exception('This operation is only available for enterprise users.');
    }
  }

  /// Internal helper method to make POST requests
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
