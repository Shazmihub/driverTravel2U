import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCKN56CS1yczMf1LCZ7I1vwjC6M58Vm-FY",
            authDomain: "rider-app-25239.firebaseapp.com",
            projectId: "rider-app-25239",
            storageBucket: "rider-app-25239.appspot.com",
            messagingSenderId: "830318063847",
            appId: "1:830318063847:web:4695bc0f0d43cf9c033242"));
  } else {
    await Firebase.initializeApp();
  }
}
