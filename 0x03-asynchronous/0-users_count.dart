Future<void> usersCount() {
  return fetchUsersCount().then((value) => print('$value'));
}
