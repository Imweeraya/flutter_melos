

import 'package:product/products/feature_home/data/models/product.dart';

abstract class IProductRepository {
  Future<List<Product>> getByCategory(String category);

  Future<List<String>> getCatagories();
}
