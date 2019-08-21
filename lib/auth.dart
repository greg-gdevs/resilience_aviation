import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


abstract class BaseAuth {
  Future<String> currentUser();
  Future<String> signIn(String email, String password);
  Future<String> signInWithGoogle();
  Future<bool> signOut();
  Future<bool> signOutGoogle();

}


class Auth implements BaseAuth {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  final GoogleSignIn googleSignIn = GoogleSignIn();


  bool firebaseSignedOut;
  bool googleSignedOut;
  Future<String> signIn(String email, String password) async {
    FirebaseUser user = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return user.uid;
  }

  Future<String> signInWithGoogle() async {
    print('In Sign In With Google');

    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    if(googleSignInAccount != null) {

      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final FirebaseUser user = await _firebaseAuth.signInWithCredential(credential);
      final FirebaseUser currentUser = await _firebaseAuth.currentUser();

      return user.uid;
    }

    return null;
  //return;

    //return 'signInWithGoogle succeeded: $user';
  }


  Future<String> currentUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user != null ? user.uid : null;
  }

  Future<bool> signOut() async {
    //await googleSignIn.signOut();
    firebaseSignedOut = false;
     await _firebaseAuth.signOut();
    await googleSignIn.signOut();

    firebaseSignedOut = true;
     return firebaseSignedOut;
  }

  Future<bool> signOutGoogle() async{
    googleSignedOut= false;
     await googleSignIn.signOut();
    googleSignedOut= true;
    return googleSignedOut;
    print("User Sign Out");
  }

}
