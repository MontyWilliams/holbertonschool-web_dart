import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    var user = await fetchUserData();
    var userId = jsonDecode(user)['id'];
    var orders = await fetchUserOrders(userId);
    var orderList = jsonDecode(orders);
    var total = 0.0;
    for (var order in orderList) {
      var price = await fetchProductPrice(order);
      total += jsonDecode(price);
    }
    return total;
  } catch (e) {
    return -1;
  }
}
