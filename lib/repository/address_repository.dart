import 'package:shoping_app/model/users/user_address.dart';

abstract class AddressRepository {
  Future<void> getAddress({required String docId});
  Future<void> deleteAddress({required int index});
  Future<void> updateAddress({required int index ,required Address address,required String docId});
}
