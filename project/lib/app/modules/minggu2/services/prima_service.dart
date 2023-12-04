//Utility Pattern
class PrimaService {
  String generatePrimesText(int limit) {
    String result = "";
    for (int i = 1; i <= limit; i++) {
      if (isPrime(i)) {
        result += "$i, ";
      }
    }
    return result;
  }

  bool isPrime(int number) {
    int count = 0;
    for (int j = 1; j <= number; j++) {
      if (number % j == 0) {
        count++;
      }
    }
    return count == 2;
  }
}
