
import 'package:http/http.dart' as http;
import '../model/product.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Products>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return  productsFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
