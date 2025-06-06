class Text23D {
  final String key;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final String? resolution;
  final String? outputFormat;
  final bool? render;
  final String? negativePrompt;
  final int? seed;
  final int? guidanceScale;
  final int? numInferenceSteps;
  final double? ssGuidanceStrength;
  final double? slatGuidanceStrength;
  final int? slatSamplingSteps;
  final double? meshSimplify;
  final double? foregroundRatio;
  final bool? removeBg;
  final int? chunkSize;
  final String? temp;

  const Text23D({
    required this.key,
    this.webhook,
    this.trackId,
    required this.prompt,
    this.resolution,
    this.outputFormat,
    this.render,
    this.negativePrompt,
    this.seed,
    this.guidanceScale,
    this.numInferenceSteps,
    this.ssGuidanceStrength,
    this.slatGuidanceStrength,
    this.slatSamplingSteps,
    this.meshSimplify,
    this.foregroundRatio,
    this.removeBg,
    this.chunkSize,
    this.temp,
  });

  factory Text23D.fromJson(Map<String, dynamic> json) {
    return Text23D(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      prompt: json['prompt'],
      resolution: json['resolution'],
      outputFormat: json['output_format'],
      render: json['render'],
      negativePrompt: json['negative_prompt'],
      seed: json['seed'],
      guidanceScale: json['guidance_scale'],
      numInferenceSteps: json['num_inference_steps'],
      ssGuidanceStrength: (json['ss_guidance_strength'] as num?)?.toDouble(),
      slatGuidanceStrength:
          (json['slat_guidance_strength'] as num?)?.toDouble(),
      slatSamplingSteps: json['slat_sampling_steps'],
      meshSimplify: (json['mesh_simplify'] as num?)?.toDouble(),
      foregroundRatio: (json['foreground_ratio'] as num?)?.toDouble(),
      removeBg: json['remove_bg'],
      chunkSize: json['chunk_size'],
      temp: json['temp'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'prompt': prompt,
        'resolution': resolution,
        'output_format': outputFormat,
        'render': render,
        'negative_prompt': negativePrompt,
        'seed': seed,
        'guidance_scale': guidanceScale,
        'num_inference_steps': numInferenceSteps,
        'ss_guidance_strength': ssGuidanceStrength,
        'slat_guidance_strength': slatGuidanceStrength,
        'slat_sampling_steps': slatSamplingSteps,
        'mesh_simplify': meshSimplify,
        'foreground_ratio': foregroundRatio,
        'remove_bg': removeBg,
        'chunk_size': chunkSize,
        'temp': temp,
      };
}

class Image23D {
  final String key;
  final String? webhook;
  final String? trackId;
  final dynamic image;
  final int? resolution;
  final String? outputFormat;
  final bool? render;
  final int? seed;
  final bool? multiImage;
  final double? ssGuidanceStrength;
  final double? slatGuidanceStrength;
  final int? slatSamplingSteps;
  final double? meshSimplify;
  final int? chunkSize;
  final String? temp;

  const Image23D({
    required this.key,
    this.webhook,
    this.trackId,
    required this.image,
    this.resolution,
    this.outputFormat,
    this.render,
    this.seed,
    this.multiImage,
    this.ssGuidanceStrength,
    this.slatGuidanceStrength,
    this.slatSamplingSteps,
    this.meshSimplify,
    this.chunkSize,
    this.temp,
  });

  factory Image23D.fromJson(Map<String, dynamic> json) {
    return Image23D(
      key: json['key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      image: json['image'],
      resolution: json['resolution'],
      outputFormat: json['output_format'],
      render: json['render'],
      seed: json['seed'],
      multiImage: json['multi_image'],
      ssGuidanceStrength: (json['ss_guidance_strength'] as num?)?.toDouble(),
      slatGuidanceStrength:
          (json['slat_guidance_strength'] as num?)?.toDouble(),
      slatSamplingSteps: json['slat_sampling_steps'],
      meshSimplify: (json['mesh_simplify'] as num?)?.toDouble(),
      chunkSize: json['chunk_size'],
      temp: json['temp'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'webhook': webhook,
        'track_id': trackId,
        'image': image,
        'resolution': resolution,
        'output_format': outputFormat,
        'render': render,
        'seed': seed,
        'multi_image': multiImage,
        'ss_guidance_strength': ssGuidanceStrength,
        'slat_guidance_strength': slatGuidanceStrength,
        'slat_sampling_steps': slatSamplingSteps,
        'mesh_simplify': meshSimplify,
        'chunk_size': chunkSize,
        'temp': temp,
      };
}
