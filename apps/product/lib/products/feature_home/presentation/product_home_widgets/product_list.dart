import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/product_card.dart';
import 'package:product/products/feature_home/presentation/viewmodels/home_viewmodel.dart';

typedef OnSelectProduct = Function(ProductDisplay product);

class ProductList extends ConsumerWidget {
  
  const ProductList({super.key , required this.products , this.onselect});

  final List<ProductDisplay> products;
  final OnSelectProduct? onselect;

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    final homeVMNotifier = ref.read(homeViewModelProvider.notifier);
    
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16,);
        },
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context , index){
          return ProductCard(product: products[index] , 
          onTap: (product) => homeVMNotifier.onSelectProduct(context, product),);
      }),
    );
  }
}