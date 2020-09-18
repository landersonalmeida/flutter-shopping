class CustomValidators {
  static isEmail(String value) {
    RegExp regex =
        new RegExp(r"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$");

    if (value.isEmpty || !regex.hasMatch(value)) {
      return 'E-mail inválido';
    }

    return null;
  }
}
