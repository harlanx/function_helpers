import 'package:function_helpers/models/models.dart';

class User extends Person {
  final String userName;
  final String email;
  final String password;
  final int pinCode;
  final String? image;

  User({
    required super.firstName,
    required super.middleName,
    required super.lastName,
    required super.age,
    required super.gender,
    required super.address,
    super.race,
    super.heightInM,
    super.weightInKg,
    super.eyeColor,
    super.hairColor,
    super.disabled,
    super.salary,
    required this.userName,
    required this.email,
    required this.password,
    required this.pinCode,
    this.image,
  });

  static List<String> get emailProviders => [
        '@hotmail.com',
        '@yahoo.com',
        'gmail.com',
        '@outlook.com',
      ];
}
