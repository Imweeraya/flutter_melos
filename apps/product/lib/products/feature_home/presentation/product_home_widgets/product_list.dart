import 'package:flutter/material.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/product_card.dart';

typedef OnSelectProduct = Function(ProductDisplay product);

class ProductList extends StatelessWidget {
  const ProductList({super.key , required this.products , this.onselect});

  final List<ProductDisplay> products;
  final OnSelectProduct? onselect;

  @override
  Widget build(BuildContext context) {
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
          return ProductCard(product: products[index] , onTap: onselect,);
      }),
    );
  }
}