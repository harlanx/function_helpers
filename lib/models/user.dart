import 'package:function_helpers/models/models.dart';

class User extends Person {
  final String userName;
  final String email;
  final String password;
  final int pinCode;
  final String? image;

  User({
    firstName,
    middleName,
    lastName,
    age,
    gender,
    address,
    race,
    heightInM,
    weightInKg,
    eyeColor,
    hairColor,
    disabled,
    salary,
    required this.userName,
    required this.email,
    required this.password,
    required this.pinCode,
    this.image,
  }) : super(
          firstName: firstName,
          middleName: middleName,
          lastName: lastName,
          age: age,
          gender: gender,
          address: address,
          race: race,
          heightInM: heightInM,
          weightInKg: weightInKg,
          eyeColor: eyeColor,
          hairColor: hairColor,
          disabled: disabled,
          salary: salary,
        );

  static List<String> get emailProviders => [
    '@hotmail.com',
    '@yahoo.com',
    'gmail.com',
    '@outlook.com',
  ];
}
