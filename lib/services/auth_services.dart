import 'package:firebase_auth/firebase_auth.dart';
import 'package:docmo/pages/login_page.dart';

class AuthServices {
  static final _firebaseAuth = FirebaseAuth.instance;

  static Future<String> register(
      {required String email, required String password}) async {
    String res = "something went wrong";
    try {
      UserCredential _cred = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      res = "success";
    } catch (e) {
      res = e.toString();
    }

    return res;
  }

  static Future<String> Login(
      {required String email, required String password}) async {
    String res = "something went wrong";
    try {
      UserCredential _cred = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      res = "success";
    } catch (e) {
      res = e.toString();
    }

    return res;
  }
}
