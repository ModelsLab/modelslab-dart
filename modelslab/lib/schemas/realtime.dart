class RealtimeText2ImageSchema {
  final String key;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final dynamic initImage;
  final String? negativePrompt;
  final double? strength;
  final bool? base64;
  final int? seed;
  final int? guidanceScale;
  final int? numInferenceSteps;
  final int? width;
  final int? height;
  final int? samples;

  const RealtimeText2ImageSchema({
    required this.key,
    this.webhook,
    this.trackId,
    required this.prompt,
    this.initImage,
    this.negativePrompt,
    this.strength,
    this.base64,
    this.seed,
    this.guidanceScale,
    this.numInferenceSteps,
    this.width = 512,
    this.height = 512,
    this.samples = 1,
  });

  factory RealtimeText2ImageSchema.fromJson(Map<String, dynamic> json) {
    return RealtimeText2ImageSchema(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      prompt: json['prompt'],
      initImage: json['init_image'],
      negativePrompt: json['negative_prompt'],
      strength: (json['strength'] as num?)?.toDouble(),
      base64: json['base64'],
      seed: json['seed'],
      guidanceScale: json['guidance_scale'],
      numInferenceSteps: json['num_inference_steps'],
      width: json['width'] ?? 512,
      height: json['height'] ?? 512,
      samples: json['samples'] ?? 1,
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'prompt': prompt,
        'init_image': initImage,
        'negative_prompt': negativePrompt,
        'strength': strength,
        'base64': base64,
        'seed': seed,
        'guidance_scale': guidanceScale,
        'num_inference_steps': numInferenceSteps,
        'width': width,
        'height': height,
        'samples': samples,
      };
}

class RealtimeImage2ImageSchema {
  final String key;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final dynamic initImage;
  final String? negativePrompt;
  final double? strength;
  final bool? base64;
  final int? seed;
  final int? guidanceScale;
  final int? numInferenceSteps;
  final int? width;
  final int? height;
  final int? samples;

  const RealtimeImage2ImageSchema({
    required this.key,
    this.webhook,
    this.trackId,
    required this.prompt,
    required this.initImage,
    this.negativePrompt,
    this.strength,
    this.base64,
    this.seed,
    this.guidanceScale,
    this.numInferenceSteps,
    this.width = 512,
    this.height = 512,
    this.samples = 1,
  });

  factory RealtimeImage2ImageSchema.fromJson(Map<String, dynamic> json) {
    return RealtimeImage2ImageSchema(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      prompt: json['prompt'],
      initImage: json['init_image'],
      negativePrompt: json['negative_prompt'],
      strength: (json['strength'] as num?)?.toDouble(),
      base64: json['base64'],
      seed: json['seed'],
      guidanceScale: json['guidance_scale'],
      numInferenceSteps: json['num_inference_steps'],
      width: json['width'] ?? 512,
      height: json['height'] ?? 512,
      samples: json['samples'] ?? 1,
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'prompt': prompt,
        'init_image': initImage,
        'negative_prompt': negativePrompt,
        'strength': strength,
        'base64': base64,
        'seed': seed,
        'guidance_scale': guidanceScale,
        'num_inference_steps': numInferenceSteps,
        'width': width,
        'height': height,
        'samples': samples,
      };
}

class RealtimeInpaintingSchema {
  final String key;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final dynamic initImage;
  final dynamic maskImage;
  final String? negativePrompt;
  final double? strength;
  final bool? base64;
  final int? seed;
  final int? guidanceScale;
  final int? numInferenceSteps;
  final int? width;
  final int? height;
  final int? samples;

  const RealtimeInpaintingSchema({
    required this.key,
    this.webhook,
    this.trackId,
    required this.prompt,
    required this.initImage,
    required this.maskImage,
    this.negativePrompt,
    this.strength,
    this.base64,
    this.seed,
    this.guidanceScale,
    this.numInferenceSteps,
    this.width = 512,
    this.height = 512,
    this.samples = 1,
  });

  factory RealtimeInpaintingSchema.fromJson(Map<String, dynamic> json) {
    return RealtimeInpaintingSchema(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      prompt: json['prompt'],
      initImage: json['init_image'],
      maskImage: json['mask_image'],
      negativePrompt: json['negative_prompt'],
      strength: (json['strength'] as num?)?.toDouble(),
      base64: json['base64'],
      seed: json['seed'],
      guidanceScale: json['guidance_scale'],
      numInferenceSteps: json['num_inference_steps'],
      width: json['width'] ?? 512,
      height: json['height'] ?? 512,
      samples: json['samples'] ?? 1,
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'prompt': prompt,
        'init_image': initImage,
        'mask_image': maskImage,
        'negative_prompt': negativePrompt,
        'strength': strength,
        'base64': base64,
        'seed': seed,
        'guidance_scale': guidanceScale,
        'num_inference_steps': numInferenceSteps,
        'width': width,
        'height': height,
        'samples': samples,
      };
}
