// ignore: camel_case_types
class utils {
  static validateEmail(String email) {
    Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(email))
      return 'Invalid username';
    else
      return null;
  }
}
