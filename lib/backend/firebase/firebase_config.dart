import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCIVYPVkmyQ6Z0i5XNNDvwp2M85K_0fGyc",
            authDomain: "databasequadroanuncio.firebaseapp.com",
            projectId: "databasequadroanuncio",
            storageBucket: "databasequadroanuncio.appspot.com",
            messagingSenderId: "286392278982",
            appId: "1:286392278982:web:11d63f60ae6c4643a49cc7"));
  } else {
    await Firebase.initializeApp();
  }
}
