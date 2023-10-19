bool isPalindrome(String s)
{
  if (s.length < 3)
    return false;
  var reversed = s.split('').reversed.join();
  return s == reversed;
}
