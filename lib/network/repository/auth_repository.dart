import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Authentication {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<void> login(
      {required String email,
      required String password,
      required Function() success,
      required Function(String message) error}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
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

  static Future<void> signUp(
      {required String email,
      required String password,
      required Function() success,
      required Function(String message) error}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      success();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        error('weak_password'.tr);
      } else if (e.code == 'email-already-in-use') {
        error('email_already_in_use'.tr);
      } else if (e.code == 'invalid-email') {
        error('invalid_email'.tr);
      }
    } catch (e) {
        error('unexpected_error'.tr);
    }
  }

  static Future<void> requestResetPassword({required String email,
    required Function() success,
    required Function(String message) error})async {

    try{
      await _auth.sendPasswordResetEmail(email: email);
      success();
    }on FirebaseAuthException catch(e){
      if (e.code == 'user-not-found') {
        error ('user_not_found'.tr);
      }
    }catch (e){
      error('unexpected_error'.tr);
    }
  }
}












