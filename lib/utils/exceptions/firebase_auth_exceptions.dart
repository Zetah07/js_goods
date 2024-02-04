class TFirebaseAuthException implements Exception {
  final String code;

  TFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is alredy registred.Please use a diffent email.';
      case 'invalid-email':
        return 'The email procided is invalid. Please enter a valid email.';
      case 'weak-password':
        return 'The password is too weak. Please enter a stronger password.';
      case 'user-not-found':
        return 'No user found for that email.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'invalid-verification-code':
        return 'The verification code is invalid. Please enter valid code.';
      case 'invalid-verification-id':
        return 'The verification id is invalid. Please request a new verification code.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The email address is alredy registred.Please use a diffent email.';
        case 'provider-already-linked':
        return 'The account is alredy linked with another provider.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Log in again before retrying this request.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials. Sign in using a provider associated with this email address.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support.';
      case 'invalid-credential':
        return 'The supplied auth credential is malformed or has expired.';
      case 'user-disabled':
        return 'The user account has been disabled by an administrator.';
      case 'user-token-expired':
        return 'The user\'s credential is no longer valid. The user must sign in again.';
      case 'invalid-user-token':
        return 'The user\'s credential is no longer valid. The user must sign in again.';
      case 'invalid-sender':
        return 'The email template sender is invalid. Please contact support.';
      case 'user-token-revoked':
        return 'The user\'s credential is no longer valid. The user must sign in again.';
        case 'unknown':
        return 'An unknown error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check the documentation.';
      default:
        return 'Something went wrong. Please try again';
    }
  }
}