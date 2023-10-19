String longestUniqueSubstring(String str) {
  var longest = '';
  var current = '';
  for (var i = 0; i < str.length; i++) {
    var char = str[i];
    var index = current.indexOf(char);
    if (index == -1) {
      current += char;
    } else {
      if (current.length > longest.length) {
        longest = current;
      }
      current = current.substring(index + 1) + char;
    }
  }
  if (current.length > longest.length) {
    longest = current;
  }
  return longest;
}
