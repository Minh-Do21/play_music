// Regex pattern to validate
mixin RegexPattern {
  static final RegExp emailRegExp = RegExp(
    r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
  );
  static final RegExp passwordRegExp = RegExp(
    r'(?=.*[1-9a-zA-Z\d]).{1,}',
  );

  static final RegExp phoneRegExp = RegExp(
    r'(^(?:[+0]9)?[0-9]{10,12}$)',
  );

  static final RegExp loginIDRegExp = RegExp(
    r'(?=.*[1-9a-zA-Z\d]).{1,}',
  );
}

mixin Pattern {
  static const dateFormatDefault = 'dd-MM-yyyy HH:mm:ss';
  static const dateFormatPromotion = 'dd-MM-yyyy HH:mm';
  static const dayType0 = 'dd-MM-yyyy';
}
