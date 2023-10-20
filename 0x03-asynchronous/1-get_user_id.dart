import '1-main.dart';
import 'dart:convert';

Future<String> getUserId() {
  return fetchUserData().then((value) => jsonDecode(value)['id']);
}
