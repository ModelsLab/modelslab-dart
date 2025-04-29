import 'dart:convert';
import 'dart:async';
import 'package:modelslab/core/client.dart';
import 'package:http/http.dart' as http;

import 'package:modelslab/schemas/audio.dart'; // Your Dart schemas like Text2Audio, Voice2Voice, etc.

import 'package:modelslab/core/apis/base.dart';

class Audio extends BaseAPI {
  late final String audioBaseUrl;

  Audio({
    required Client client,
    bool enterprise = false,
    Map<String, dynamic> kwargs = const {},
  }) : super(
          client: client,
          baseUrl: '', // Will override below
          enterprise: enterprise,
          kwargs: kwargs,
        ) {
    if (enterprise) {
      audioBaseUrl = '${client.baseUrl}v1/enterprise/voice/';
    } else {
      audioBaseUrl = '${client.baseUrl}v6/voice/';
    }
  }

  Future<Map<String, dynamic>> textToAudio(Text2Audio schema) async {
    final endpoint = '${audioBaseUrl}text_to_audio';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> textToSpeech(Text2Speech schema) async {
    final endpoint = '${audioBaseUrl}text_to_speech';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> voiceToVoice(Voice2Voice schema) async {
    final endpoint = '${audioBaseUrl}voice_to_voice';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> voiceCover(VoiceCover schema) async {
    final endpoint = '${audioBaseUrl}voice_cover';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> musicGen(MusicGenSchema schema) async {
    final endpoint = '${audioBaseUrl}music_gen';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> lyricsGen(LyricsGenerator schema) async {
    final endpoint = '${audioBaseUrl}lyrics_generator';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> songGenerator(SongGenerator schema) async {
    final endpoint = '${audioBaseUrl}song_generator';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> speechToText(Speech2Text schema) async {
    // This uses different base URL directly
    final endpoint = 'https://modelslab.com/api/v6/whisper/transcribe';
    return await _post(endpoint, data: schema.toJson());
  }

  Future<Map<String, dynamic>> sfxGen(SFX schema) async {
    final endpoint = '${audioBaseUrl}sfx';
    return await _post(endpoint, data: schema.toJson());
  }

  /// Internal POST helper (reused)
  Future<Map<String, dynamic>> _post(String url,
      {required Map<String, dynamic> data}) async {
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
          'Failed POST request: ${response.statusCode} ${response.body}');
    }
  }
}
