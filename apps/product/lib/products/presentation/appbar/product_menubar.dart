import 'package:core_ui/theme/theme_provider.dart';
import 'package:core_ui/widgets/elements/texts/medium_text.dart';
import 'package:core_ui/widgets/elements/texts/menubar_text.dart';
import 'package:core_ui/widgets/elements/texts/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class ProductMenubar extends ConsumerWidget {
  const ProductMenubar({super.key , required this.productprice});
  final double productprice;

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    final color = ref.watch(appThemeProvider).themeColor;

    return Container(
                color: color.backgroundColorPrimary,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.chat_bubble_rounded,
                                color: color.selectedItem,
                                size: 25,
                              )),
                          MenubarText(title: "Chat" ,color: color.selectedItem,)
                        ],
                      ),
                      Container(
                        color: color.textColor,
                        width: 0.5,
                        height: 50,
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_bag_rounded,
                                color: color.selectedItem,
                                size: 25,
                              )),
                          MenubarText(title: "Add to shopbag" ,color: color.selectedItem,)
                        ],
                      ),
                      Container(
                        color: color.textColor,
                        width: 0.5,
                        height: 50,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 19, 179, 118),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: const Size(200, 80)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmallText(
                              title: "BUY NOW",
                              color: Colors.white,
                            ),
                            MediumText(
                              title: "${productprice.toString()} \$",
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ));
  }
}