import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/movies_model.dart'; //decode

class ProductServices {
  //network layer

  static Future<List<Products1>?> fetchMovies() async {
//msg , statusCode , body
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      final jsonRes = jsonDecode(response.body); //response =>json

      final moviesRes = Products.fromJson(jsonRes);
      print(moviesRes.products);
      return moviesRes.products;
    } else {
      print('error');
      throw Exception('error ');
    }
  }
}
//Futurebuilder