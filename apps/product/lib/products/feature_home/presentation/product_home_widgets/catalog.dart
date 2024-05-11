import 'package:core_ui/widgets/texts/text_title.dart';
import 'package:flutter/material.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/product_list.dart';


class Catalog extends StatelessWidget {
  const Catalog({super.key , required this.products , required this.title , this.onSelectProduct});

  final List<ProductDisplay> products;
  final String title;

  final OnSelectProduct? onSelectProduct;

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: TextTitle(title: title),
          ),
          ProductList(products: products , onselect: onSelectProduct,)
        ],
      ),
    );
  }
}