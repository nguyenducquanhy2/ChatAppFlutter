import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Authentication {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> login(
      {required String email,
      required String password,
      required Function() success,
      required Function(String message) error}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      success();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        error('user_not_found'.tr);
      } else if (e.code == 'wrong-password') {
        error('wrong_password'.tr);
      }
    } catch (e) {
      error('unexpected_error'.tr);
    }
  }
}
