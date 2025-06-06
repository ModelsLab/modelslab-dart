class SpecificFaceSwap {
  final String key;
  final String? webhook;
  final String? trackId;
  final dynamic initImage;
  final dynamic targetImage;
  final dynamic referenceImage;
  final bool? watermark;

  const SpecificFaceSwap({
    required this.key,
    this.webhook,
    this.trackId,
    required this.initImage,
    required this.targetImage,
    required this.referenceImage,
    this.watermark,
  });

  factory SpecificFaceSwap.fromJson(Map<String, dynamic> json) {
    return SpecificFaceSwap(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      initImage: json['init_image'],
      targetImage: json['target_image'],
      referenceImage: json['reference_image'],
      watermark: json['watermark'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'init_image': initImage,
        'target_image': targetImage,
        'reference_image': referenceImage,
        'watermark': watermark,
      };
}

class MultipleFaceSwap {
  final String key;
  final String? webhook;
  final String? trackId;
  final dynamic initImage;
  final dynamic targetImage;
  final bool? watermark;

  const MultipleFaceSwap({
    required this.key,
    this.webhook,
    this.trackId,
    required this.initImage,
    required this.targetImage,
    this.watermark,
  });

  factory MultipleFaceSwap.fromJson(Map<String, dynamic> json) {
    return MultipleFaceSwap(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      initImage: json['init_image'],
      targetImage: json['target_image'],
      watermark: json['watermark'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'init_image': initImage,
        'target_image': targetImage,
        'watermark': watermark,
      };
}

class SingleVideoSwap {
  final String key;
  final String? webhook;
  final String? trackId;
  final dynamic initImage;
  final dynamic initVideo;
  final String? outputFormat;
  final bool? watermark;

  const SingleVideoSwap({
    required this.key,
    this.webhook,
    this.trackId,
    required this.initImage,
    required this.initVideo,
    this.outputFormat = "mp4",
    this.watermark,
  });

  factory SingleVideoSwap.fromJson(Map<String, dynamic> json) {
    return SingleVideoSwap(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      initImage: json['init_image'],
      initVideo: json['init_video'],
      outputFormat: json['output_format'] ?? "mp4",
      watermark: json['watermark'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'init_image': initImage,
        'init_video': initVideo,
        'output_format': outputFormat,
        'watermark': watermark,
      };
}

class SpecificVideoSwap {
  final String key;
  final String? webhook;
  final String? trackId;
  final dynamic initImage;
  final dynamic initVideo;
  final dynamic referenceImage;
  final String? outputFormat;
  final bool? watermark;

  const SpecificVideoSwap({
    required this.key,
    this.webhook,
    this.trackId,
    required this.initImage,
    required this.initVideo,
    required this.referenceImage,
    this.outputFormat = "mp4",
    this.watermark,
  });

  factory SpecificVideoSwap.fromJson(Map<String, dynamic> json) {
    return SpecificVideoSwap(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      initImage: json['init_image'],
      initVideo: json['init_video'],
      referenceImage: json['reference_image'],
      outputFormat: json['output_format'] ?? "mp4",
      watermark: json['watermark'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'init_image': initImage,
        'init_video': initVideo,
        'reference_image': referenceImage,
        'output_format': outputFormat,
        'watermark': watermark,
      };
}
