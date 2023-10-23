import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() {
  return fetchUserData().then((value) => jsonDecode(value)['id']);
}
