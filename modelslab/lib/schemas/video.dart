class Text2Video {
  final String key;
  final String? webhook;
  final String? trackId;
  final String modelId;
  final String prompt;
  final String? negativePrompt;
  final int? seed;
  final int? width;
  final int? height;
  final int? numFrames;
  final int? numInferenceSteps;
  final double? guidanceScale;
  final int? fps;

  const Text2Video({
    required this.key,
    this.webhook,
    this.trackId,
    required this.modelId,
    required this.prompt,
    this.negativePrompt,
    this.seed,
    this.width = 512,
    this.height = 512,
    this.numFrames = 30,
    this.numInferenceSteps = 50,
    this.guidanceScale = 7.5,
    this.fps = 8,
  });

  factory Text2Video.fromJson(Map<String, dynamic> json) {
    return Text2Video(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      modelId: json['model_id'],
      prompt: json['prompt'],
      negativePrompt: json['negative_prompt'],
      seed: json['seed'],
      width: json['width'],
      height: json['height'],
      numFrames: json['num_frames'],
      numInferenceSteps: json['num_inference_steps'],
      guidanceScale: (json['guidance_scale'] as num?)?.toDouble(),
      fps: json['fps'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'model_id': modelId,
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'seed': seed,
        'width': width,
        'height': height,
        'num_frames': numFrames,
        'num_inference_steps': numInferenceSteps,
        'guidance_scale': guidanceScale,
        'fps': fps,
      };
}

class Image2Video {
  final String key;
  final String? webhook;
  final String? trackId;
  final String modelId;
  final String prompt;
  final String? negativePrompt;
  final int? seed;
  final int? width;
  final int? height;
  final int? numFrames;
  final int? numInferenceSteps;
  final double? guidanceScale;
  final int? fps;
  final dynamic initImage;

  const Image2Video({
    required this.key,
    this.webhook,
    this.trackId,
    required this.modelId,
    required this.prompt,
    this.negativePrompt,
    this.seed,
    this.width = 512,
    this.height = 512,
    this.numFrames = 30,
    this.numInferenceSteps = 50,
    this.guidanceScale = 7.5,
    this.fps = 8,
    this.initImage,
  });

  factory Image2Video.fromJson(Map<String, dynamic> json) {
    return Image2Video(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      modelId: json['model_id'],
      prompt: json['prompt'],
      negativePrompt: json['negative_prompt'],
      seed: json['seed'],
      width: json['width'],
      height: json['height'],
      numFrames: json['num_frames'],
      numInferenceSteps: json['num_inference_steps'],
      guidanceScale: (json['guidance_scale'] as num?)?.toDouble(),
      fps: json['fps'],
      initImage: json['init_image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'model_id': modelId,
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'seed': seed,
        'width': width,
        'height': height,
        'num_frames': numFrames,
        'num_inference_steps': numInferenceSteps,
        'guidance_scale': guidanceScale,
        'fps': fps,
        'init_image': initImage,
      };
}

class Text2VideoUltra {
  final String key;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final String? negativePrompt;
  final int? seed;
  final String? resolution;
  final int? numFrames;
  final int? numInferenceSteps;
  final double? guidanceScale;
  final int? fps;
  final bool? portrait;
  final int? sampleShift;

  const Text2VideoUltra({
    required this.key,
    this.webhook,
    this.trackId,
    required this.prompt,
    this.negativePrompt,
    this.seed,
    this.resolution = "512x512",
    this.numFrames = 30,
    this.numInferenceSteps = 50,
    this.guidanceScale = 7.5,
    this.fps = 8,
    this.portrait,
    this.sampleShift,
  });

  factory Text2VideoUltra.fromJson(Map<String, dynamic> json) {
    return Text2VideoUltra(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      prompt: json['prompt'],
      negativePrompt: json['negative_prompt'],
      seed: json['seed'],
      resolution: json['resolution'],
      numFrames: json['num_frames'],
      numInferenceSteps: json['num_inference_steps'],
      guidanceScale: (json['guidance_scale'] as num?)?.toDouble(),
      fps: json['fps'],
      portrait: json['portrait'],
      sampleShift: json['sample_shift'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'seed': seed,
        'resolution': resolution,
        'num_frames': numFrames,
        'num_inference_steps': numInferenceSteps,
        'guidance_scale': guidanceScale,
        'fps': fps,
        'portrait': portrait,
        'sample_shift': sampleShift,
      };
}
