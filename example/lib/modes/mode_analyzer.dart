import 'package:face_recognition_sdk/face_recognition_sdk.dart' as fr;

import 'face_mode.dart';

/// Maps [FaceMode] to Android ModeAnalyzer / SDK convenience APIs.
class ModeAnalyzer {
  ModeAnalyzer._();

  static Future<String?> analyze(
    FaceMode mode,
    String imageUri, {
    String? oddImageUri,
    int landmarkMode = 68,
  }) async {
    switch (mode) {
      case FaceMode.faceDetect:
        return fr.faceDetect(imageUri, crop: false);
      case FaceMode.faceAttribute:
        return fr.faceAttribute(imageUri, crop: false);
      case FaceMode.imageQuality:
        final quality = await fr.imageQuality(imageUri, crop: false);
        if (!_isNoFaceResult(quality)) return quality;
        return fr.faceDetect(imageUri, crop: false);
      case FaceMode.landmarks:
        return fr.landmarks(imageUri, mode: landmarkMode);
      case FaceMode.match:
        final other = oddImageUri;
        if (other == null || other.isEmpty) return null;
        return fr.match(other, imageUri, crop: false);
      case FaceMode.liveness:
        return fr.livenessAll(imageUri);
      case FaceMode.enroll:
        return fr.extractFeature(imageUri);
      case FaceMode.identity:
      case FaceMode.enrolledList:
        return fr.faceDetect(imageUri, crop: false);
    }
  }

  static bool _isNoFaceResult(String? json) {
    if (json == null || json.trim().isEmpty) return true;
    final upper = json.toUpperCase();
    if (RegExp(r'"STATUS"\s*:\s*2').hasMatch(upper)) return true;
    if (upper.contains('"NO_FACE"')) return true;
    if (RegExp(r'"DATA"\s*:\s*\[\s*\]').hasMatch(upper)) return true;
    return false;
  }
}
