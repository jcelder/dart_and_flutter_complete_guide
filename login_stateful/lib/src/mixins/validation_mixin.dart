class ValidationMixin {
  String validateEmail(String value) {
    bool isValid = value.contains(new RegExp('.+@.+'));
    return isValid ? null : 'Invalid Email Address';
  }

  String validatePassword(String value) {
    bool isValid = value.length >= 8;
    return isValid ? null : 'Invalid Password';
  }
}