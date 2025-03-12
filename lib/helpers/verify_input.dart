String? verifyInput(String? input, [String? errorMessage]) {
  if (input != null && input.isNotEmpty) {
    return input;
  } else {
    return null;
  }
}

T? verifyNumber<T extends num>(String? input, {required String to}) {
  if (input == null) {
    return null;
  }

  if (num.tryParse(input) == null) return null;

  switch (to.toLowerCase()) {
    case 'double':
      if (double.tryParse(input) != null) return double.parse(input) as T;
      break;
    case 'int':
      if (int.tryParse(input) != null) return int.parse(input) as T;
      break;
    default:
      break;
  }

  return null;
}
