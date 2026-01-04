/***********************************************************/
/* Palindrome Number - Optimized Solution                  */
/* Time Complexity: O(1) - only using constant extra space */
/***********************************************************/

// This approach reverses only half of the number and compares
// it with the other half. This avoids potential overflow issues
// and is more efficient than reversing the entire number.

void main() {
  int input = 121;
  print('The number $input is a palindrome: ${isPalindrome(input)}'); // true

  input = -121;
  print('The number $input is a palindrome: ${isPalindrome(input)}'); // false

  input = 10;
  print('The number $input is a palindrome: ${isPalindrome(input)}'); // false
}

isPalindrome(int input) {
  // Special cases:
  // 1. Negative numbers are not palindromes (minus sign)
  // 2. Numbers ending with 0 are not palindromes (except 0 itself)
  //    because no number starts with 0
  if (input < 0 || (input % 10 == 0 && input != 0)) {
    return false;
  }
}

/******************************************************/
/* Palindrome Number - Brute Force Solution           */
/* Time Complexity: O(n) - single pass through digits */
/******************************************************/
// void main() {
//   isPalindrome(int input) {
//     if (input < 0) {
//       return false;
//     }

//     List<int> digits = [];
//     List<int> reversedDigits = [];
//     final inputString = input.toString();
//     digits = inputString.split('').map(int.parse).toList();
//     reversedDigits = digits.reversed.toList();
//     final String digitsJoined = digits.join();
//     final String reversedDigitsJoined = reversedDigits.join();

//     if (digitsJoined == reversedDigitsJoined) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   const List<int> testNumbers = [121, -121, 10];

//   for (final number in testNumbers) {
//     final result = isPalindrome(number);
//     print('Is $number a palindrome? $result');
//   }
// }
