

import 'package:product/products/feature_home/domain/entities/product.dart';

abstract class IProductService {
  Future<List<ProductDisplay>> getByCategory(String category);
  Future<List<String>> getCatagories();
}