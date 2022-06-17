import 'package:firebase_auth/firebase_auth.dart';

Future<void> checkAuth() async {
  try {
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      print('Signed in Already');
    } else {
      print('Signed out');
    }
  } catch (e) {
    print(e);
  }
}

Future<void> signUp(String email, String password) async {
  try {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    print(e);
  }
}

Future<void> signIn(String email, String password) async {
  try {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    print(e);
  }
}

Future<void> signOut() async {
  try {
    FirebaseAuth.instance.signOut();
  } catch (e) {
    print(e);
  }
}
