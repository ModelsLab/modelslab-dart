class SkechRendringSchema {
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

  const SkechRendringSchema({
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
  });

  factory SkechRendringSchema.fromJson(Map<String, dynamic> json) {
    return SkechRendringSchema(
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
      };
}

class InteriorSchema {
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

  const InteriorSchema({
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
  });

  factory InteriorSchema.fromJson(Map<String, dynamic> json) {
    return InteriorSchema(
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
      };
}

class RoomDecoratorSchema {
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

  const RoomDecoratorSchema({
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
  });

  factory RoomDecoratorSchema.fromJson(Map<String, dynamic> json) {
    return RoomDecoratorSchema(
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
      };
}

class FloorSchema {
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

  const FloorSchema({
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
  });

  factory FloorSchema.fromJson(Map<String, dynamic> json) {
    return FloorSchema(
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
      };
}

class ExteriorSchema {
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

  const ExteriorSchema({
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
  });

  factory ExteriorSchema.fromJson(Map<String, dynamic> json) {
    return ExteriorSchema(
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
      };
}

class ScenarioSchema {
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
  final String? scenario;

  const ScenarioSchema({
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
    this.scenario,
  });

  factory ScenarioSchema.fromJson(Map<String, dynamic> json) {
    return ScenarioSchema(
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
      scenario: json['scenario'],
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
        'scenario': scenario,
      };
}
