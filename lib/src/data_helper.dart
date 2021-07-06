import 'package:function_helpers/models/models.dart';
import 'package:function_helpers/src/random_helper.dart';

class MockData {
  static List<Person> people(int count) {
    return List.generate(
      count,
      (index) {
        return Person(
          firstName: Names.firstNames[RandomHelper.randRangeInt(0, Names.firstNames.length - 1)],
          middleName: Names.middleNames[RandomHelper.randRangeInt(0, Names.middleNames.length - 1)],
          lastName: Names.lastNames[RandomHelper.randRangeInt(0, Names.lastNames.length - 1)],
          age: RandomHelper.randRangeInt(18, 50),
          gender: Gender.values[RandomHelper.randRangeInt(0, Gender.values.length - 1)],
          address: Address(
            houseNo: RandomHelper.randRangeInt(65, 800),
            street: RandomHelper.randString(8),
            city: RandomHelper.randString(8),
            district: RandomHelper.randString(8),
            country: RandomHelper.randString(10),
          ),
          // Optional
          salary: RandomHelper.randRangeDouble(500, 50000),
          race: Race.values[RandomHelper.randRangeInt(0, Race.values.length - 1)],
          weightInKg: RandomHelper.randRangeDouble(40,80),
          heightInM: RandomHelper.randRangeDouble(1.30,1.8),
          eyeColor: EyeColor.values[RandomHelper.randRangeInt(0, EyeColor.values.length - 1)],
          hairColor: HairColor.values[RandomHelper.randRangeInt(0, HairColor.values.length - 1)],
          disabled: RandomHelper.randBoolean(),
        );
      },
    );
  }

  static List<Product> products(int quantity) => List.generate(
        quantity,
        (index) {
          return Product(
            name: RandomHelper.randString(10),
            brand: RandomHelper.randString(8),
            price: RandomHelper.randRangeDouble(80, 2000),
            // Optional
            oldPrice: RandomHelper.randRangeDouble(200, 5000),
            productType: ProductType.values[RandomHelper.randRangeInt(0, ProductType.values.length - 1)],
            image: RandomHelper.randSingleImage(),
          );
        },
      );

  static List<User> users(int count) => List.generate(
        count,
        (index) {
          return User(
            userName: RandomHelper.randString(8),
            email: '${RandomHelper.randString(8)} ${User.emailProviders}}',
            password: RandomHelper.randCryptoString(),
            pinCode: RandomHelper.randRangeInt(1000, 9999),
            firstName: Names.firstNames[RandomHelper.randRangeInt(0, Names.firstNames.length - 1)],
            middleName: Names.middleNames[RandomHelper.randRangeInt(0, Names.middleNames.length - 1)],
            lastName: Names.lastNames[RandomHelper.randRangeInt(0, Names.lastNames.length - 1)],
            age: RandomHelper.randRangeInt(18, 50),
            gender: Gender.values[RandomHelper.randRangeInt(0, Gender.values.length - 1)],
            address: Address(
              houseNo: RandomHelper.randRangeInt(65, 800),
              street: RandomHelper.randString(8),
              city: RandomHelper.randString(8),
              district: RandomHelper.randString(8),
              country: RandomHelper.randString(10),
            ),
          );
        },
      );
}
