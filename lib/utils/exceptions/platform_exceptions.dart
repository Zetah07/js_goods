class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'ERROR_INVALID_EMAIL':
        return 'The email procided is invalid. Please enter a valid email.';
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'The email or password is incorrect. Please check your credentials and try again.';
      case 'ERROR_USER_NOT_FOUND':
        return 'No user found for that email.';
      case 'ERROR_WRONG_PASSWORD':
        return 'Incorrect password. Please check your password and try again.';
      case 'ERROR_EMAIL_ALREADY_IN_USE':
        return 'The email address is alredy registred.Please use a diffent email.';
      case 'ERROR_WEAK_PASSWORD':
        return 'The password is too weak. Please enter a stronger password.';
      case 'ERROR_TOO_MANY_REQUESTS':
        return 'Too many requests. Please try again later.';
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'invalid-argument':
        return 'Invalid argument. Please try again.';
      case 'invalid-verification-code':
        return 'The verification code is invalid. Please enter valid code.';
      case 'invalid-verification-id':
        return 'The verification id is invalid. Please request a new verification code.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support.';
      case 'session-expired':
        return 'The session has expired. Please log in again.';
      case 'session-cookie-expired':
        return 'The session has expired. Please log in again.';
      case 'sign_in_failed':
        return 'Sign in failed. Please try again.';
      case 'network-request-failed':
        return 'Network request failed. Please check your internet connection and try again.';
      default:
        return 'Something went wrong. Please try again';
    }
  }
}
