import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDa9ZLuNLv_EbyB6KTSWnOGUR4uMrFswFo",
            authDomain: "hostflow-fe38e.firebaseapp.com",
            projectId: "hostflow-fe38e",
            storageBucket: "hostflow-fe38e.firebasestorage.app",
            messagingSenderId: "32117214118",
            appId: "1:32117214118:web:a54cb590cb5e2216311d67",
            measurementId: "G-2H4XVR4R1Y"));
  } else {
    await Firebase.initializeApp();
  }
}
