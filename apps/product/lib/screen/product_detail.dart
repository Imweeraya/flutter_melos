import 'package:core_ui/widgets/elements/texts/detail_text.dart';
import 'package:core_ui/widgets/elements/texts/medium_text.dart';
import 'package:core_ui/widgets/elements/texts/small_text.dart';
import 'package:core_ui/widgets/texts/text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/product_menubar.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.product});

  final ProductDisplay product;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool favorite = false;

  void toggleFavorite() {
    setState(() {
      favorite = !favorite;
    });
    favorite ? showSnackBar("Add to wishlist") : showSnackBar("Remove from wishlist");
  }

  void showSnackBar (String message){
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              message,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Color.fromARGB(255, 143, 143, 143)),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.white,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.only(bottom: 70, left: 40, right: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // width: 250,
            duration: Duration(seconds: 3),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    List<Widget> starIcons = List.generate(5, (index) {
      if (index < product.rating!.toDouble()) {
        return const Icon(
          Icons.star_rate_rounded,
          color: Color.fromARGB(255, 255, 180, 59),
          size: 30,
        );
      } else {
        return const Icon(Icons.star_border_rounded,
            color: Color.fromARGB(255, 255, 180, 59), size: 30);
      }
    });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              child: Container(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.black87,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: ListView(
                    children: [
                      TextTitle(
                        title: "${product.price.toString()} \$",
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: MediumText(
                              title: product.name,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: toggleFavorite,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  favorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      const Color.fromARGB(255, 251, 120, 110),
                                  size: 30,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            children: starIcons,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SmallText(
                            title: "(${product.count.toString()})",
                            color: Colors.white,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                          height: 0.5,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.white54),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: MediumText(
                              title: "Shipping",
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(width: 10),
                              DetailText(
                                title: "Muang Chiang Mai",
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailText(title: "Economical shipping"),
                          DetailText(title: "1.00 \$"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          DetailText(title: "Receieve within 3 days"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.local_shipping_rounded,
                            color: Colors.white70,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                          height: 0.5,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.white54),
                        ),
                      ),
                      MediumText(
                        title: "Product details",
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DetailText(title: product.description ?? ""),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white54,
              width: double.infinity,
              height: 0.5,
            ),
            ProductMenubar(productprice: product.price)
          ],
        ),
      ),
    );
  }
}
