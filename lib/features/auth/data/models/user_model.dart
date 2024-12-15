class UserModel {
  final String uid;
  final String email;
  final String name;
  final String location;
  final String phoneNumber;
  final String birthDate;
  final String bloodType;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.location,
    required this.phoneNumber,
    required this.birthDate,
    required this.bloodType,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        uid: json['uid'] as String,
        email: json['email'] as String,
        name: json['name'] as String,
        location: json['location'] as String,
        phoneNumber: json['phoneNumber'] ,
        birthDate: json['birthDate'] as String,
        bloodType: json['bloodType'] as String,
      );

  toMap() => {
        'uid': uid,
        'email': email,
        'name': name,
        'location': location,
        'phoneNumber': phoneNumber,
        'birthDate': birthDate,
        'bloodType': bloodType,
      };
}
