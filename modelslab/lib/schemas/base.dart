class BaseSchema {
  final String key;
  final String? webhook;
  final String? trackId;

  const BaseSchema({
    required this.key,
    this.webhook,
    this.trackId,
  });

  factory BaseSchema.fromJson(Map<String, dynamic> json) {
    return BaseSchema(
      key: json['key'] as String,
      webhook: json['webhook'] as String?,
      trackId: json['track_id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      if (webhook != null) 'webhook': webhook,
      if (trackId != null) 'track_id': trackId,
    };
  }
}

class FetchSchema {
  final String id;
  final String key;

  const FetchSchema({
    required this.id,
    required this.key,
  });

  factory FetchSchema.fromJson(Map<String, dynamic> json) {
    return FetchSchema(
      id: json['id'] as String,
      key: json['key'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': key,
    };
  }
}
