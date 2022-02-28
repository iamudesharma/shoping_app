import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shoping_app/repository/auth_repository.dart';
import 'package:shoping_app/widgets/logger.dart';
import 'package:shoping_app/widgets/toast.dart';

class AuthController extends GetxController with AuthRepository {
  FirebaseAuth firebaseAuth;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  AuthController({
    required this.firebaseAuth,
  });

  final _logger = Get.find<LoggerController>();


  forgotPassword(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      Toasts.showToastSucces("Email sent");
      _logger.logger.i("Email sent");
    } catch (e) {
      Toasts.showToastError('SomeingWentWrong');
      _logger.logger.e("Email sent error: ${e.toString()}");
    }
  }

  @override
  Future<bool> isSignedIn() {
    // TODO: implement isSignedIn
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
      _logger.logger.i("Login Succes: ${user.email}");
      return user;
    } catch (e) {
      Toasts.showToastError('SomeingWentWrong');
      _logger.logger.e("User login error: ${e.toString()}");

      print(e.toString());
      return null;
    }
  }

  @override
  Future<User?> signInWithGoogle() {
  CollectionReference userStoreRef = firestore.collection('');

    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
      Toasts.showToastSucces("Logout Succes");
      _logger.logger.i("Logout Succes");
    } catch (e) {
      Toasts.showToastError('SomeingWentWrong');
      _logger.logger.e("Logout error: ${e.toString()}");
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
      _logger.logger.i("User created: ${user.email}");

      return user;
    } catch (e) {
      _logger.logger.e("User Create error: ${e.toString()}");

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
