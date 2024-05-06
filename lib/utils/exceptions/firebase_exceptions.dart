class MFirebaseException implements Exception {
  final String code;

  MFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unkown':
        return 'An unkown firebase error occured. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check your custome token.';
      case 'custom-token-mismatch':
        return 'The custom token is not a match.';
      case 'keychain-error':
        return 'A keychain error occured. Contact support for assistance.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'weak-password':
        return 'The password is too weak. Please choose a different password.';
      case 'user-disabled':
        return 'The user account has been disabled. Please use a different email.';
      case 'user-not-found':
        return 'Invalid login details. User not found.';
      case 'wrong-password':
        return 'Incorrect Password. Please check your password and try again.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code.';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request a new verification code.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The email address already exists. Please use a different email.';
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'requires-recent-login':
        return 'Please log in again to continue.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different credentials.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Contact support for assistance.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new action code.';
      case 'invalid-action-code':
        return 'The action code is invalid. Please check the code and try again.';
      case 'missing-action-code':
        return 'The action code is missing. Please provide a valid code.';
      case 'user-token-expired':
        return 'The user\'s token has expired, and authentication is required. Please sign in again.';
      case 'users-not-found':
        return 'No user found for the given email or ID.';
      case 'invalid-credential':
        return 'The supplied credential is wrong or invalid.';
      case 'user-token-revoked':
        return 'The user\'s token has been revoked. Please sign in again.';
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid.';
      case 'invalid-sender':
        return 'The email template sender is invalid. Please verify the sender\'s email.';
      case 'email-change-needs-verification':
        return 'Multi-factor users must always have a verified email.';
      case 'timeout':
        return 'The operation has timed out.';
      case 'web-storage-unsupported':
        return 'This browser is not supported or 3rd party cookies and data may be disabled.';
      case 'internal-error':
        return 'An internal error has occurred.';
      case 'missing-iframe-start':
        return 'An internal error has occurred.';
      default:
        return 'An unexpected Firebase error occured. Please try again';
    }
  }
}
