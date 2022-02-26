class UserModel {
  String name;
  String email;
  String phoneNumber;
  String uid;
  List<AddresssModel>? address;
  UserModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.uid,
    this.address,
  });
}

class AddresssModel {
  String? state;
  String? suite;
  String? city;
  String? zipcode;
}
