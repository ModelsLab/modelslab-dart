class Client {
  final String key;
  final String baseUrl;
  final int fetchRetry;
  final int fetchTimeout;

  const Client._internal({
    required this.key,
    this.baseUrl = 'https://modelslab.com/api/',
    this.fetchRetry = 10,
    this.fetchTimeout = 2,
  });

  /// Factory constructor to load API key manually
  factory Client(
      {required String key, int fetchRetry = 10, int fetchTimeout = 2}) {
    if (key.isEmpty) {
      throw Exception('API key is required.');
    }
    return Client._internal(
      key: key,
      fetchRetry: fetchRetry,
      fetchTimeout: fetchTimeout,
    );
  }
}
