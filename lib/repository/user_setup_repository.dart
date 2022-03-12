import 'package:shoping_app/model/users/user_address.dart';
import 'package:shoping_app/model/users/user_model.dart';

abstract class UserRespository {
  Future<UserModel> getUserdata(String uid);
  Future<void> updateUserData(UserModel user);
  Future<void> deleteUser(String uid);
}
