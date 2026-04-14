import 'package:firebase_auth/firebase_auth.dart';

import '/backend/backend.dart';

class AuthProfileService {
  /// Best-effort profile creation so auth success is not blocked by
  /// Firestore/profile bootstrap failures.
  static Future<void> ensureUserProfile(User user) async {
    try {
      await maybeCreateUser(user);
    } catch (e, st) {
      print('AuthProfileService.ensureUserProfile failed for ${user.uid}: $e');
      print(st);
    }
  }
}
