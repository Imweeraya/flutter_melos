
import 'package:core_libs/depedency_injection/get_it.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:product/products/feature_home/data/models/product.dart';
import 'package:product/products/feature_home/domain/port_product.dart/repository.dart';


class ProductRepository implements IProductRepository {
  final HttpService httpService = getit.get<HttpService>();

  @override
  Future<List<Product>> getByCategory(String category) async {
    final response = await httpService.get('/products/category/$category');

    List<Product> products = [];
    for (dynamic res in response) {
      products.add(Product.fromJson(res));
    }
    return products;
  }

  @override
  Future<List<String>> getCatagories() async {
    final response = await httpService.get('/products/categories');
    // List<String> categories = [];
    // for(dynamic res in response){
    //   categories.add(res);
    // }
    return ["electronics", "jewelery", "men's clothing", "women's clothing"];
  }
}
