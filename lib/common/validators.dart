import 'package:formz/formz.dart';
import 'barrel_common.dart';
import 'pattern.dart';
import 'validation_error.dart';

// Function support Validator
class Validators {
  static bool isValidEmail(String email) {
    return RegexPattern.emailRegExp.hasMatch(email);
  }

  static bool isValidPassword(String password) {
    return RegexPattern.passwordRegExp.hasMatch(password);
  }

  static bool isValidName(String name) {
    return name.isNotEmpty;
  }

  static bool isValidPhone(String phone) {
    return RegexPattern.phoneRegExp.hasMatch(phone);
  }

  static bool isValidLoginID(String loginID) {
    return RegexPattern.loginIDRegExp.hasMatch(loginID);
  }
}

class EmailOrPhone extends FormzInput<String, ValidationError> {
  const EmailOrPhone.pure() : super.pure('');

  const EmailOrPhone.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) {
      return ValidationError.empty;
    } else {
      final isValid =
          Validators.isValidEmail(value) || Validators.isValidPhone(value);
      return isValid ? null : ValidationError.invalid;
    }
  }
}

class Password extends FormzInput<String, ValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) {
      return ValidationError.empty;
    }
    final isValid = Validators.isValidPassword(value);
    return isValid ? null : ValidationError.invalid;
  }
}

class Email extends FormzInput<String, ValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) {
      return ValidationError.empty;
    } else {
      final isValid = Validators.isValidEmail(value);
      return isValid ? null : ValidationError.invalid;
    }
  }
}

class Phone extends FormzInput<String, ValidationError> {
  const Phone.pure() : super.pure('');

  const Phone.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) {
      return ValidationError.empty;
    } else {
      final isValid = Validators.isValidPhone(value);
      return isValid ? null : ValidationError.invalid;
    }
  }
}

class UserName extends FormzInput<String, ValidationError> {
  const UserName.pure() : super.pure('');

  const UserName.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) {
      return ValidationError.empty;
    } else {
      return (value.isNotEmpty && value.length >= 5)
          ? null
          : ValidationError.invalid;
    }
  }
}

class Code extends FormzInput<String, ValidationError> {
  const Code.pure() : super.pure('');

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) {
      return ValidationError.empty;
    }
    final isValid = Validators.isValidName(value);
    return isValid ? null : ValidationError.invalid;
  }
}

class LoginID extends FormzInput<String, ValidationError> {
  const LoginID.pure() : super.pure('');

  const LoginID.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) {
      return ValidationError.empty;
    }
    final isValid = Validators.isValidLoginID(value);
    return isValid ? null : ValidationError.invalid;
  }
}
