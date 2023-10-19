import '9-palindrome.dart';


String longestPalindrome(String s) {
  String longest = "";
  List<String> palindromes = [];
  for (var i = 0; i < s.length; i++) {
    for (var j = i + 1; j <= s.length; j++) {
      var substring = s.substring(i, j);
      if (isPalindrome(substring)) {
        if (substring.length > longest.length) {
          longest = substring;
          palindromes = [substring];
        } else if (substring.length == longest.length) {
          palindromes.add(substring);
        }
      }
    }
  }
  return palindromes.isNotEmpty ? palindromes[0] : "none";
}
