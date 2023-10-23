import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:core';

Future<void> printRmCharacters() async {
  final apiUrl = 'https://rickandmortyapi.com/api/character';

   try {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final characters = data['results'];

      for (var character in characters) {
        print('${character['name']}');
      }
    } else {
      print('Failed to retrieve Rick and Morty characters.');
    }
  } catch (error) {
    print('error caught: $error');
  }
}
