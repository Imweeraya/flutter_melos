
import 'package:core_libs/depedency_injection/get_it.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/feature_home/domain/port_product.dart/repository.dart';
import 'package:product/products/feature_home/domain/port_product.dart/service.dart';
class ProductService extends IProductService {
  final IProductRepository repository = getit.get<IProductRepository>();

  @override
  Future<List<ProductDisplay>> getByCategory(String category) async {
    final rawProducts = await repository.getByCategory(category);
    return rawProducts
        .map((product) => ProductDisplay(
            id: product.id.toString(),
            category: product.category!,
            name: product.title!,
            imageUrl: product.image!,
            price: product.price!.toDouble(),
            description: product.description ?? "",
            rating: product.rating != null ? product.rating!.rate : 0,
            count: product.rating != null ? product.rating!.count : 0))
        .toList();
  }

  @override
  Future<List<String>> getCatagories() async {
    final catagories = await repository.getCatagories();
    return catagories;
  }
}
