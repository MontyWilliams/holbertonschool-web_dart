import '0-main.dart';

Future<void> usersCount() {
  return fetchUsersCount().then((value) => print('$value'));
}
