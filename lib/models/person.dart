import 'dart:math' as math;

class Person {
  final String firstName, middleName, lastName;
  final int age;
  final Gender gender;
  final Address address;
  final Race race;
  final double heightInM;
  final double weightInKg;
  final EyeColor eyeColor;
  final HairColor hairColor;
  final bool disabled;
  final double salary;

  Person({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.age,
    required this.gender,
    required this.address,
    this.race = Race.none,
    this.heightInM = 1.595,
    this.weightInKg = 62,
    this.eyeColor = EyeColor.brown,
    this.hairColor = HairColor.black,
    this.disabled = false,
    this.salary = 0.0,
  });

  String completeName([bool completeMiddle = true]) {
    if (completeMiddle) {
      return '$firstName $middleName $lastName';
    } else {
      return '$firstName ${middleName[0]}. $lastName';
    }
  }

  BMI get bmi {
    var x = weightInKg / math.pow(heightInM, 2);
    var status = '';
    if (x < 18.5) {
      status = 'Underweight';
    } else if (18.5 < x && x < 24.9) {
      status = 'Normal';
    } else if (25 < x && x < 29.9) {
      status = 'Overweight';
    } else if (30 < x && x < 34.9) {
      status = 'Obese';
    } else if (35 < x) {
      status = 'Extremely Obese';
    }
    return BMI(bmi: x, status: status);
  }
}

class Names {
  static List<String> get firstNames => [
        'Pearlene',
        'Connie',
        'Jarrod',
        'Kenny',
        'Lucie',
        'Myrtle',
        'Napoleon',
        'Lupita',
        'Hank',
        'Jonie',
        'Shavon',
        'Daniel',
        'Florentino',
        'Dwayne',
        'Darnell',
        'Jackeline',
        'Concepcion',
        'Heidy',
        'Ranee',
        'Christa',
        'Sherise',
        'Garnett',
        'Consuelo',
        'Jill',
        'Evelin',
        'Bert',
        'Guadalupe',
        'Danika',
        'Belen',
        'Annabelle',
      ];

  static List<String> get middleNames => [
        'Pruitt',
        'Harris',
        'Matthews',
        'Carey',
        'Barnett',
        'Barker',
        'Travis',
        'Allen',
        'Woods',
        'Hanna',
        'Miller',
        'Novak',
        'Hartman',
        'Weiss',
        'Harper',
        'Deleon',
        'Glover',
        'Glass',
        'King',
        'Pennington',
        'Brock',
        'Hernandez',
        'Rodriguez',
        'Ryan',
        'Flowers',
        'Pollard',
        'Juarez',
        'Romero',
        'Brady',
        'Massey',
      ];

  static List<String> get lastNames => [
        'Mathis',
        'Merritt',
        'Collier',
        'Scott',
        'Dunn',
        'Richmond',
        'Small',
        'Khan',
        'Brooks',
        'Beck',
        'Moyer',
        'Key',
        'Shah',
        'Gonzalez',
        'Walker',
        'Cook',
        'Oconnell',
        'Moon',
        'Santana',
        'Baldwin',
        'Salas',
        'Mcfarland',
        'Roach',
        'Lee',
        'Tucker',
        'Prince',
        'Ibarra',
        'Burch',
        'Osborne',
        'Nelson',
      ];
}

enum Gender {
  male,
  female,
}

class Address {
  final int houseNo;
  final String street;
  final String city;
  final String district;
  final String country;

  Address({
    required this.houseNo,
    required this.street,
    required this.city,
    required this.district,
    required this.country,
  });
}

enum Race {
  americanIndian,
  asian,
  black,
  none,
  pacificIslander,
  white,
}

enum EyeColor {
  blind,
  amber,
  blue,
  brown,
  gray,
  green,
  hazel,
  red,
}

enum HairColor {
  bald,
  black,
  brown,
  blond,
  red,
  white,
}

class BMI {
  double bmi;
  String status;

  BMI({
    required this.bmi,
    required this.status,
  });
}
