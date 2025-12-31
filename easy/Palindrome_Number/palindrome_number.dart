void main() {
  isPalindrome(int input) {
    if (input < 0) {
      return false;
    }

    List<int> digits = [];
    List<int> reversedDigits = [];
    final inputString = input.toString();
    digits = inputString.split('').map(int.parse).toList();
    reversedDigits = digits.reversed.toList();
    final String digitsJoined = digits.join();
    final String reversedDigitsJoined = reversedDigits.join();

    if (digitsJoined == reversedDigitsJoined) {
      return true;
    } else {
      return false;
    }
  }

  const List<int> testNumbers = [121, -121, 10];

  for (final number in testNumbers) {
    final result = isPalindrome(number);
    print('Is $number a palindrome? $result');
  }
}
