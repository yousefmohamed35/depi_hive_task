String? validateEmail(String? email) {
  // Regular expression pattern for validating email addresses
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  email ?? '';
  if (email!.isEmpty) {
    return 'Email cannot be empty';
  } else if (!emailRegex.hasMatch(email)) {
    return 'Please enter a valid email address';
  }
  return null; // Return null if the email is valid
}
String? validatePhoneNumber(String? phoneNumber) {
  // Regular expression pattern for validating email addresses
  final RegExp PhoneRegex = RegExp(
    r'^\+?[0-9]{1,4}?[0-9]{7,15}$',
  );
  phoneNumber ?? '';
  if (phoneNumber!.isEmpty) {
    return 'Email cannot be empty';
  } else if (!PhoneRegex.hasMatch(phoneNumber)) {
    return 'Please enter a valid email address';
  }
  return null; // Return null if the email is valid
}
