class Client {
  final String apiKey;
  final String baseUrl;
  final int fetchRetry;
  final int fetchTimeout;

  const Client._internal({
    required this.apiKey,
    this.baseUrl = 'https://modelslab.com/api/',
    this.fetchRetry = 10,
    this.fetchTimeout = 2,
  });

  /// Factory constructor to load API key manually
  factory Client(
      {required String apiKey, int fetchRetry = 10, int fetchTimeout = 2}) {
    if (apiKey.isEmpty) {
      throw Exception('API key is required.');
    }
    return Client._internal(
      apiKey: apiKey,
      fetchRetry: fetchRetry,
      fetchTimeout: fetchTimeout,
    );
  }
}
