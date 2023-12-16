import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  fetchData();
}

Future fetchData() async {
  //https://fakestoreapi.com/products
  List products = [];
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/products'));

  products = jsonDecode(response.body);
  products.forEach((element) {
    print('Product: $element');
  });
}
