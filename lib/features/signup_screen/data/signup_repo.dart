import 'package:firebase_auth/firebase_auth.dart';

class SignupRepository {
  final FirebaseAuth _firebaseAuth;

  SignupRepository({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Future<UserCredential> signUp(String email, String password) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
