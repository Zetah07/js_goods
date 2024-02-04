class TFormatException implements Exception {
  ///The associated error message.
  final String message;

/// Defailt constructor with a generic error message.
  const TFormatException({this.message = 'An unexpected format error occurred. Please check your input and try again.'});


/// Create a format exveption from a specific error message.
  factory TFormatException.fromMessage(String message) {
    return TFormatException(message: message);
  }

/// Get the corresponding error message.
  String get formattedMessage => message;

  factory TFormatException.formCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const TFormatException(message: 'The email procided is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
        return const TFormatException(message: 'The phone number procided is invalid. Please enter a valid phone number.');
      case 'invalid-date-format':
        return const TFormatException(message: 'The date procided is invalid. Please enter a valid date.');
      case 'invalid-password-format':
        return const TFormatException(message: 'The password procided is invalid. Please enter a valid password.');
      case 'invalid-url-format':
        return const TFormatException(message: 'The URL procided is invalid. Please enter a valid URL.');
      default:
        return const TFormatException();
    }
  }

} 