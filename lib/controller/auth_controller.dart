import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';
import 'package:shoping_app/repository/auth_repository.dart';
import 'package:shoping_app/widgets/toast.dart';

class AuthController extends GetxController with AuthRepository {
  FirebaseAuth firebaseAuth;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  AuthController({
    required this.firebaseAuth,
  });

  final logger = Logger('AuthController');

  forgotPassword(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      Toasts.showToastSucces("Email sent");
      logger.info("Email sent");
    } catch (e) {
      Toasts.showToastError('SomeingWentWrong');
      logger.severe("Email sent error: ${e.toString()}");
    }
  }

  @override
  Future<bool> isSignedIn() {
    throw UnimplementedError();
  }

  @override
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;

      Toasts.showToastSucces("Login Succes: ${user.email}");
      logger.info("Login Succes: ${user.email}");
      return user;
    } catch (e) {
      Toasts.showToastError('SomeingWentWrong');
      logger.severe("User login error: ${e.toString()}");

      print(e.toString());
      return null;
    }
  }

  @override
  Future<User?> signInWithGoogle() {
    CollectionReference userStoreRef = firestore.collection('');

    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
      Toasts.showToastSucces("Logout Succes");
      logger.info("Logout Succes");
    } catch (e) {
      Toasts.showToastError('SomeingWentWrong');
      logger.severe("Logout error: ${e.toString()}");
    }
  }

  @override
  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;

      Toasts.showToastSucces("User created: ${user.email}");
      logger.info("User created: ${user.email}");

      return user;
    } catch (e) {
      logger.severe("User Create error: ${e.toString()}");

      Toasts.showToastError('SomeingWentWrong');

      return null;
    }
  }

  @override
  void onInit() {
    firebaseAuth.authStateChanges().listen((user) {});
    super.onInit();
  }
}
