bool isValidPhoneNumber(String value) {
  if (value.isEmpty) {
    return false;
  }
  if (!RegExp(r'^[0-9]{10,15}$').hasMatch(value)) {
    return false;
  }
  return true;
}