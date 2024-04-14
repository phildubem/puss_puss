class MFormatException implements Exception {
  final String message;

  MFormatException(
      [this.message =
          'An unexpected format error occured. Please check your input.']);

  factory MFormatException.fromMessage(String message) {
    return MFormatException(message);
  }

  String get formattedMessage => message;

  factory MFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return MFormatException(
            'The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
        return MFormatException(
            'The provided phone number format is invalid. Please enter a valid number.');
      case 'invalid-date-format':
        return MFormatException(
            'The date format is invalid. Please enter a valid date.');
      case 'invalid-url-format':
        return MFormatException(
            'The URL format is invalid. Please enter a valid URL.');
      case 'invalid-credit-card-format':
        return MFormatException(
            'The credit card format is invalid. Please enter a valid card number.');
      case 'invalid-numeric-format':
        return MFormatException('The provided numeric format is invalid.');
      default:
        return MFormatException('An unexpected Firebase error occured. Please try again');
    }
  }
}
