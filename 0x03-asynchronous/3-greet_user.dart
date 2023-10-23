import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final username = jsonDecode(userData)['username'];
    return 'Hello $username';
  } catch(e) {
    return 'error caught: $e';
  }
}

Future<dynamic> loginUser() async {
  try {
    final getUser = await checkCredentials();
    if (getUser) {
      print('There is a user: true');
      return greetUser();
    } else {
      print ('Ther is a user: false');
      return 'wrong credentials';
    }
  } catch (e) {
    print('error caught: $e');
  }
}
