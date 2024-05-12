import 'package:core_ui/theme/theme_provider.dart';
import 'package:core_ui/widgets/elements/texts/price_text.dart';
import 'package:core_ui/widgets/elements/texts/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';

typedef ProductCardTap = Function(ProductDisplay product);

class ProductCard extends ConsumerWidget {
  const ProductCard({super.key, required this.product, this.onTap});

  final ProductDisplay product;
  final double width = 200;
  final double height = 220;
  final ProductCardTap? onTap;

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    final color = ref.watch(appThemeProvider).themeColor;

    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!(product);
        }
      },
      child: Container(
        decoration: BoxDecoration(
         
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        width: width,
        height: height,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                product.imageUrl,
                width: width,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const Spacer(),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      color: color.backgroundColorSecondary),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(
                          title: product.name.length > 10
                              ? '${product.name.substring(0, 10)}...'
                              : product.name,
                          color: color.textColor,
                        ),
                        PriceText(
                          title: '${product.price} \$',
                          color: color.textColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
