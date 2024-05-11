
import 'package:core_libs/depedency_injection/get_it.dart';
import 'package:product/products/feature_home/data/repositories/product_repository.dart';
import 'package:product/products/feature_home/domain/port_product.dart/repository.dart';
import 'package:product/products/feature_home/domain/port_product.dart/service.dart';
import 'package:product/products/feature_home/domain/services/product_services.dart';

void registerProductServices(){
  getit.registerSingleton<IProductRepository>(ProductRepository());
  getit.registerSingleton<IProductService>(ProductService());
}