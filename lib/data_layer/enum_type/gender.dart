enum Gender {
  FEMALE,
  MALE,
}

extension GenderExtension on Gender {
  int get type {
    switch (this) {
      case Gender.MALE:
        return 1;
      default:
        return 2;
    }
  }
}

class GenderHelper {
  static Gender convertType(int type) {
    if (type == Gender.MALE.type) {
      return Gender.MALE;
    }
    return Gender.FEMALE;
  }
}
