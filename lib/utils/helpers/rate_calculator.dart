class MRateCalculator {
  static double calculateTotalHashRate() {
    double hashRate = getHash() / getRate();
    return hashRate;
  }

  static double getHash() {
   return 1.6;
  }

  static double getRate() {
   return 60 * 60 * 24;
  }
}
