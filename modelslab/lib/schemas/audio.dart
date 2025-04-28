class Text2Audio {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final dynamic initAudio;
  final String? voiceId;
  final String? language;
  final double? speed;
  final double? temp;
  final String? base64;
  final bool? stream;

  const Text2Audio({
    required this.apiKey,
    this.webhook,
    this.trackId,
    required this.prompt,
    this.initAudio,
    this.voiceId,
    this.language,
    this.speed,
    this.temp,
    this.base64,
    this.stream,
  });

  factory Text2Audio.fromJson(Map<String, dynamic> json) {
    return Text2Audio(
      apiKey: json['api_key'] as String,
      webhook: json['webhook'] as String?,
      trackId: json['track_id'] as String?,
      prompt: json['prompt'] as String,
      initAudio: json['init_audio'],
      voiceId: json['voice_id'] as String?,
      language: json['language'] as String?,
      speed: (json['speed'] as num?)?.toDouble(),
      temp: (json['temp'] as num?)?.toDouble(),
      base64: json['base64'] as String?,
      stream: json['stream'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'api_key': apiKey,
      if (webhook != null) 'webhook': webhook,
      if (trackId != null) 'track_id': trackId,
      'prompt': prompt,
      if (initAudio != null) 'init_audio': initAudio,
      if (voiceId != null) 'voice_id': voiceId,
      if (language != null) 'language': language,
      if (speed != null) 'speed': speed,
      if (temp != null) 'temp': temp,
      if (base64 != null) 'base64': base64,
      if (stream != null) 'stream': stream,
    };
  }
}

class Text2Speech {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final String? voiceId;
  final String? language;
  final double? speed;
  final String? emotion;
  final double? temp;

  const Text2Speech({
    required this.apiKey,
    this.webhook,
    this.trackId,
    required this.prompt,
    this.voiceId,
    this.language,
    this.speed,
    this.emotion,
    this.temp,
  });

  factory Text2Speech.fromJson(Map<String, dynamic> json) {
    return Text2Speech(
      apiKey: json['api_key'] as String,
      webhook: json['webhook'] as String?,
      trackId: json['track_id'] as String?,
      prompt: json['prompt'] as String,
      voiceId: json['voice_id'] as String?,
      language: json['language'] as String?,
      speed: (json['speed'] as num?)?.toDouble(),
      emotion: json['emotion'] as String?,
      temp: (json['temp'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'api_key': apiKey,
      if (webhook != null) 'webhook': webhook,
      if (trackId != null) 'track_id': trackId,
      'prompt': prompt,
      if (voiceId != null) 'voice_id': voiceId,
      if (language != null) 'language': language,
      if (speed != null) 'speed': speed,
      if (emotion != null) 'emotion': emotion,
      if (temp != null) 'temp': temp,
    };
  }
}

class Voice2Voice {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final dynamic initAudio;
  final dynamic targetAudio;
  final bool? base64;
  final double? temp;
  final bool? stream;

  const Voice2Voice({
    required this.apiKey,
    this.webhook,
    this.trackId,
    required this.initAudio,
    required this.targetAudio,
    this.base64,
    this.temp,
    this.stream,
  });

  factory Voice2Voice.fromJson(Map<String, dynamic> json) {
    return Voice2Voice(
      apiKey: json['api_key'] as String,
      webhook: json['webhook'] as String?,
      trackId: json['track_id'] as String?,
      initAudio: json['init_audio'],
      targetAudio: json['target_audio'],
      base64: json['base64'] as bool?,
      temp: (json['temp'] as num?)?.toDouble(),
      stream: json['stream'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'api_key': apiKey,
      if (webhook != null) 'webhook': webhook,
      if (trackId != null) 'track_id': trackId,
      'init_audio': initAudio,
      'target_audio': targetAudio,
      if (base64 != null) 'base64': base64,
      if (temp != null) 'temp': temp,
      if (stream != null) 'stream': stream,
    };
  }
}

class VoiceCover {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final dynamic initAudio;
  final String? modelId;
  final String? pitch;
  final String? algorithm;
  final String? rate;
  final String? seed;
  final String? language;
  final String? emotion;
  final double? speed;
  final double? radius;
  final double? mix;
  final int? hopLength;
  final double? originality;
  final int? leadVoiceVolumeDelta;
  final int? backupVoiceVolumeDelta;
  final int? instrumentVolumeDelta;
  final double? reverbSize;
  final double? wetness;
  final double? dryness;
  final double? damping;
  final bool? base64;
  final double? temp;

  const VoiceCover({
    required this.apiKey,
    this.webhook,
    this.trackId,
    required this.initAudio,
    this.modelId,
    this.pitch,
    this.algorithm,
    this.rate,
    this.seed,
    this.language,
    this.emotion = 'neutral',
    this.speed,
    this.radius,
    this.mix,
    this.hopLength,
    this.originality,
    this.leadVoiceVolumeDelta,
    this.backupVoiceVolumeDelta,
    this.instrumentVolumeDelta,
    this.reverbSize,
    this.wetness,
    this.dryness,
    this.damping,
    this.base64,
    this.temp,
  });

  factory VoiceCover.fromJson(Map<String, dynamic> json) {
    return VoiceCover(
      apiKey: json['api_key'] as String,
      webhook: json['webhook'] as String?,
      trackId: json['track_id'] as String?,
      initAudio: json['init_audio'],
      modelId: json['model_id'] as String?,
      pitch: json['pitch'] as String?,
      algorithm: json['algorithm'] as String?,
      rate: json['rate'] as String?,
      seed: json['seed'] as String?,
      language: json['language'] as String?,
      emotion: json['emotion'] as String? ?? 'neutral',
      speed: (json['speed'] as num?)?.toDouble(),
      radius: (json['radius'] as num?)?.toDouble(),
      mix: (json['mix'] as num?)?.toDouble(),
      hopLength: json['hop_length'] as int?,
      originality: (json['originality'] as num?)?.toDouble(),
      leadVoiceVolumeDelta: json['lead_voice_volume_delta'] as int?,
      backupVoiceVolumeDelta: json['backup_voice_volume_delta'] as int?,
      instrumentVolumeDelta: json['instrument_volume_delta'] as int?,
      reverbSize: (json['reverb_size'] as num?)?.toDouble(),
      wetness: (json['wetness'] as num?)?.toDouble(),
      dryness: (json['dryness'] as num?)?.toDouble(),
      damping: (json['damping'] as num?)?.toDouble(),
      base64: json['base64'] as bool?,
      temp: (json['temp'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'api_key': apiKey,
      if (webhook != null) 'webhook': webhook,
      if (trackId != null) 'track_id': trackId,
      'init_audio': initAudio,
      if (modelId != null) 'model_id': modelId,
      if (pitch != null) 'pitch': pitch,
      if (algorithm != null) 'algorithm': algorithm,
      if (rate != null) 'rate': rate,
      if (seed != null) 'seed': seed,
      if (language != null) 'language': language,
      'emotion': emotion,
      if (speed != null) 'speed': speed,
      if (radius != null) 'radius': radius,
      if (mix != null) 'mix': mix,
      if (hopLength != null) 'hop_length': hopLength,
      if (originality != null) 'originality': originality,
      if (leadVoiceVolumeDelta != null)
        'lead_voice_volume_delta': leadVoiceVolumeDelta,
      if (backupVoiceVolumeDelta != null)
        'backup_voice_volume_delta': backupVoiceVolumeDelta,
      if (instrumentVolumeDelta != null)
        'instrument_volume_delta': instrumentVolumeDelta,
      if (reverbSize != null) 'reverb_size': reverbSize,
      if (wetness != null) 'wetness': wetness,
      if (dryness != null) 'dryness': dryness,
      if (damping != null) 'damping': damping,
      if (base64 != null) 'base64': base64,
      if (temp != null) 'temp': temp,
    };
  }
}

class MusicGenSchema {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final dynamic initAudio;
  final String? base64;
  final double? temp;
  final int? maxNewToken;
  final int? samplingRate;

  const MusicGenSchema({
    required this.apiKey,
    this.webhook,
    this.trackId,
    required this.prompt,
    this.initAudio,
    this.base64,
    this.temp,
    this.maxNewToken,
    this.samplingRate,
  });

  factory MusicGenSchema.fromJson(Map<String, dynamic> json) {
    return MusicGenSchema(
      apiKey: json['api_key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      prompt: json['prompt'],
      initAudio: json['init_audio'],
      base64: json['base64'],
      temp: (json['temp'] as num?)?.toDouble(),
      maxNewToken: json['max_new_token'],
      samplingRate: json['sampling_rate'],
    );
  }

  Map<String, dynamic> toJson() => {
        'api_key': apiKey,
        'webhook': webhook,
        'track_id': trackId,
        'prompt': prompt,
        'init_audio': initAudio,
        'base64': base64,
        'temp': temp,
        'max_new_token': maxNewToken,
        'sampling_rate': samplingRate,
      };
}

class LyricsGenerator {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final String prompt;

  const LyricsGenerator({
    required this.apiKey,
    this.webhook,
    this.trackId,
    required this.prompt,
  });

  factory LyricsGenerator.fromJson(Map<String, dynamic> json) {
    return LyricsGenerator(
      apiKey: json['api_key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      prompt: json['prompt'],
    );
  }

  Map<String, dynamic> toJson() => {
        'api_key': apiKey,
        'webhook': webhook,
        'track_id': trackId,
        'prompt': prompt,
      };
}

class SongGenerator {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final bool? lyricsGeneration;
  final dynamic initAudio;
  final String prompt;
  final String? lyrics;

  const SongGenerator({
    required this.apiKey,
    this.webhook,
    this.trackId,
    this.lyricsGeneration,
    this.initAudio,
    required this.prompt,
    this.lyrics,
  });

  factory SongGenerator.fromJson(Map<String, dynamic> json) {
    return SongGenerator(
      apiKey: json['api_key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      lyricsGeneration: json['lyrics_generation'],
      initAudio: json['init_audio'],
      prompt: json['prompt'],
      lyrics: json['lyrics'],
    );
  }

  Map<String, dynamic> toJson() => {
        'api_key': apiKey,
        'webhook': webhook,
        'track_id': trackId,
        'lyrics_generation': lyricsGeneration,
        'init_audio': initAudio,
        'prompt': prompt,
        'lyrics': lyrics,
      };
}

class Speech2Text {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final String audioUrl;
  final String? inputLanguage;
  final String? timestampLevel;

  const Speech2Text({
    required this.apiKey,
    this.webhook,
    this.trackId,
    required this.audioUrl,
    this.inputLanguage,
    this.timestampLevel,
  });

  factory Speech2Text.fromJson(Map<String, dynamic> json) {
    return Speech2Text(
      apiKey: json['api_key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      audioUrl: json['audio_url'],
      inputLanguage: json['input_language'],
      timestampLevel: json['timestamp_level'],
    );
  }

  Map<String, dynamic> toJson() => {
        'api_key': apiKey,
        'webhook': webhook,
        'track_id': trackId,
        'audio_url': audioUrl,
        'input_language': inputLanguage,
        'timestamp_level': timestampLevel,
      };
}

class SFX {
  final String apiKey;
  final String? webhook;
  final String? trackId;
  final String prompt;
  final int? duration;
  final bool? temp;

  const SFX({
    required this.apiKey,
    this.webhook,
    this.trackId,
    required this.prompt,
    this.duration,
    this.temp,
  });

  factory SFX.fromJson(Map<String, dynamic> json) {
    return SFX(
      apiKey: json['api_key'],
      webhook: json['webhook'],
      trackId: json['track_id'],
      prompt: json['prompt'],
      duration: json['duration'],
      temp: json['temp'],
    );
  }

  Map<String, dynamic> toJson() => {
        'api_key': apiKey,
        'webhook': webhook,
        'track_id': trackId,
        'prompt': prompt,
        'duration': duration,
        'temp': temp,
      };
}
