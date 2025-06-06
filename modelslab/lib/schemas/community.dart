class Text2Image {
  final String key;
  final String prompt;
  final String? modelId;
  final String? negativePrompt;
  final int? width;
  final int? height;
  final int? samples;
  final int? numInferenceSteps;
  final String? safetyChecker;
  final int? seed;
  final String? enhancePrompt;
  final double? guidanceScale;
  final String? multiLingual;
  final String? panorama;
  final String? selfAttention;
  final String? upscale;
  final String? loraModel;
  final double? loraStrength;
  final String? scheduler;
  final int? clipSkip;

  const Text2Image({
    required this.key,
    required this.prompt,
    this.modelId,
    this.negativePrompt,
    this.width,
    this.height,
    this.samples,
    this.numInferenceSteps,
    this.safetyChecker,
    this.seed,
    this.enhancePrompt,
    this.guidanceScale,
    this.multiLingual,
    this.panorama,
    this.selfAttention,
    this.upscale,
    this.loraModel,
    this.loraStrength,
    this.scheduler,
    this.clipSkip,
  });

  Map<String, dynamic> toJson() => {
        'key': key,
        'prompt': prompt,
        'model_id': modelId,
        'negative_prompt': negativePrompt,
        'width': width,
        'height': height,
        'samples': samples,
        'num_inference_steps': numInferenceSteps,
        'safety_checker': safetyChecker,
        'seed': seed,
        'enhance_prompt': enhancePrompt,
        'guidance_scale': guidanceScale,
        'multi_lingual': multiLingual,
        'panorama': panorama,
        'self_attention': selfAttention,
        'upscale': upscale,
        'lora_model': loraModel,
        'lora_strength': loraStrength,
        'scheduler': scheduler,
        'clip_skip': clipSkip,
      };
}

class Image2Image {
  final String key;
  final String prompt;
  final dynamic initImage;
  final String? modelId;
  final String? negativePrompt;
  final int? width;
  final int? height;
  final int? samples;
  final int? numInferenceSteps;
  final String? safetyChecker;
  final int? seed;
  final String? enhancePrompt;
  final double? guidanceScale;
  final String? multiLingual;
  final String? panorama;
  final String? selfAttention;
  final String? upscale;
  final String? loraModel;
  final double? loraStrength;
  final String? scheduler;
  final int? clipSkip;

  const Image2Image({
    required this.key,
    required this.prompt,
    required this.initImage,
    this.modelId,
    this.negativePrompt,
    this.width,
    this.height,
    this.samples,
    this.numInferenceSteps,
    this.safetyChecker,
    this.seed,
    this.enhancePrompt,
    this.guidanceScale,
    this.multiLingual,
    this.panorama,
    this.selfAttention,
    this.upscale,
    this.loraModel,
    this.loraStrength,
    this.scheduler,
    this.clipSkip,
  });

  Map<String, dynamic> toJson() => {
        'key': key,
        'prompt': prompt,
        'init_image': initImage,
        'model_id': modelId,
        'negative_prompt': negativePrompt,
        'width': width,
        'height': height,
        'samples': samples,
        'num_inference_steps': numInferenceSteps,
        'safety_checker': safetyChecker,
        'seed': seed,
        'enhance_prompt': enhancePrompt,
        'guidance_scale': guidanceScale,
        'multi_lingual': multiLingual,
        'panorama': panorama,
        'self_attention': selfAttention,
        'upscale': upscale,
        'lora_model': loraModel,
        'lora_strength': loraStrength,
        'scheduler': scheduler,
        'clip_skip': clipSkip,
      };
}

class Inpainting {
  final String key;
  final String prompt;
  final dynamic initImage;
  final dynamic maskImage;
  final String? modelId;
  final String? negativePrompt;
  final int? width;
  final int? height;
  final int? samples;
  final int? numInferenceSteps;
  final String? safetyChecker;
  final int? seed;
  final String? enhancePrompt;
  final double? guidanceScale;
  final String? multiLingual;
  final String? panorama;
  final String? selfAttention;
  final String? upscale;
  final String? loraModel;
  final double? loraStrength;
  final String? scheduler;
  final int? clipSkip;

  const Inpainting({
    required this.key,
    required this.prompt,
    required this.initImage,
    required this.maskImage,
    this.modelId,
    this.negativePrompt,
    this.width,
    this.height,
    this.samples,
    this.numInferenceSteps,
    this.safetyChecker,
    this.seed,
    this.enhancePrompt,
    this.guidanceScale,
    this.multiLingual,
    this.panorama,
    this.selfAttention,
    this.upscale,
    this.loraModel,
    this.loraStrength,
    this.scheduler,
    this.clipSkip,
  });

  Map<String, dynamic> toJson() => {
        'key': key,
        'prompt': prompt,
        'init_image': initImage,
        'mask_image': maskImage,
        'model_id': modelId,
        'negative_prompt': negativePrompt,
        'width': width,
        'height': height,
        'samples': samples,
        'num_inference_steps': numInferenceSteps,
        'safety_checker': safetyChecker,
        'seed': seed,
        'enhance_prompt': enhancePrompt,
        'guidance_scale': guidanceScale,
        'multi_lingual': multiLingual,
        'panorama': panorama,
        'self_attention': selfAttention,
        'upscale': upscale,
        'lora_model': loraModel,
        'lora_strength': loraStrength,
        'scheduler': scheduler,
        'clip_skip': clipSkip,
      };
}

class ControlNet {
  final String key;
  final String prompt;
  final dynamic initImage;
  final dynamic maskImage;
  final String? modelId;
  final String? negativePrompt;
  final int? width;
  final int? height;
  final int? samples;
  final int? numInferenceSteps;
  final String? safetyChecker;
  final int? seed;
  final String? enhancePrompt;
  final double? guidanceScale;
  final String? multiLingual;
  final String? panorama;
  final String? selfAttention;
  final String? upscale;
  final String? loraModel;
  final double? loraStrength;
  final String? scheduler;
  final int? clipSkip;
  final String? controlnetModel;
  final String? controlnetType;
  final double? strength;

  const ControlNet({
    required this.key,
    required this.prompt,
    required this.initImage,
    required this.maskImage,
    this.modelId,
    this.negativePrompt,
    this.width,
    this.height,
    this.samples,
    this.numInferenceSteps,
    this.safetyChecker,
    this.seed,
    this.enhancePrompt,
    this.guidanceScale,
    this.multiLingual,
    this.panorama,
    this.selfAttention,
    this.upscale,
    this.loraModel,
    this.loraStrength,
    this.scheduler,
    this.clipSkip,
    this.controlnetModel,
    this.controlnetType,
    this.strength,
  });

  Map<String, dynamic> toJson() => {
        'key': key,
        'prompt': prompt,
        'init_image': initImage,
        'mask_image': maskImage,
        'model_id': modelId,
        'negative_prompt': negativePrompt,
        'width': width,
        'height': height,
        'samples': samples,
        'num_inference_steps': numInferenceSteps,
        'safety_checker': safetyChecker,
        'seed': seed,
        'enhance_prompt': enhancePrompt,
        'guidance_scale': guidanceScale,
        'multi_lingual': multiLingual,
        'panorama': panorama,
        'self_attention': selfAttention,
        'upscale': upscale,
        'lora_model': loraModel,
        'lora_strength': loraStrength,
        'scheduler': scheduler,
        'clip_skip': clipSkip,
        'controlnet_model': controlnetModel,
        'controlnet_type': controlnetType,
        'strength': strength,
      };
}
