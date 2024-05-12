import 'package:core_ui/theme/theme_provider.dart';
import 'package:core_ui/theme/theme_state.dart';
import 'package:core_ui/widgets/elements/buttons/secondary_button.dart';
import 'package:core_ui/widgets/elements/texts/detail_text.dart';
import 'package:core_ui/widgets/elements/texts/medium_text.dart';
import 'package:core_ui/widgets/texts/text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/home_menubar.dart';
import 'package:product/products/presentation/card/slide_image.dart';

class UserScreen extends ConsumerStatefulWidget {
  const UserScreen({super.key});

  @override
  ConsumerState<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends ConsumerState<UserScreen> {
  // void onSelectMenu(String path) {
  //   context.go(path);
  // }

  @override
  Widget build(BuildContext context) {
    final color = ref.watch(appThemeProvider).themeColor;
    final themeNotifier = ref.read(appThemeProvider.notifier);
    final themeProvider = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.backgroundColorPrimary,
        actions: [
           IconButton(
                onPressed: themeNotifier.switchTheme,
                icon: Icon(
                  themeProvider.selectedTheme == Themes.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                  color: color.textColor,
                )
                ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: color.textColor,
              ))
        ],
      ),
      body: SafeArea(
        child: Container(
          color: color.backgroundColorSecondary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.network(
                            "https://i.pinimg.com/564x/51/6c/f7/516cf7265a49ba343a9af949dee84bb3.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextTitle(title: "Weeraya Kosandilok" , color: color.textColor,),
                          Container(
                            decoration:  BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 77, 77, 77)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: DetailText(
                                title: "Platinum Memner >",
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    color: color.backgroundColorPrimary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MediumText(
                              title: "My Orders",
                              color: color.textColor,
                            ),
                            DetailText(title: "View all orders >")
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                 Icon(
                                  Icons.payments_outlined,
                                  color: color.textColor,
                                  size: 30,
                                ),
                                DetailText(title: "To Pay")
                              ],
                            ),
                            Column(
                              children: [
                                 Icon(
                                  Icons.assignment_returned,
                                  color: color.textColor,
                                  size: 30,
                                ),
                                DetailText(title: "To Ship")
                              ],
                            ),
                            Column(
                              children: [
                                 Icon(
                                  Icons.local_shipping_rounded,
                                  color: color.textColor,
                                  size: 30,
                                ),
                                DetailText(title: "To Receive")
                              ],
                            ),
                            Column(
                              children: [
                                 Icon(
                                  Icons.chat_rounded,
                                  color: color.textColor,
                                  size: 30,
                                ),
                                DetailText(title: "To Review")
                              ],
                            ),
                          ],
                        ),
                         SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: color.textColor,
                          width: double.infinity,
                          height: 0.5,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MediumText(
                          title: "Special Deal",
                          color: color.textColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 150,
                          width: double.infinity,
                          child: ImageSlider(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: color.textColor,
                          width: double.infinity,
                          height: 0.5,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SecondaryButtom(
                          icon: Icons.card_membership_rounded,
                          title: "Membership",
                          buttonColor: Color.fromARGB(255, 101, 101, 101),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SecondaryButtom(
                          icon: Icons.favorite_rounded,
                          title: "My Wishlist",
                          buttonColor: Color.fromARGB(255, 251, 120, 110),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SecondaryButtom(
                          icon: Icons.account_circle,
                          title: "Account Setting",
                          buttonColor: Color.fromARGB(255, 78, 123, 167),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SecondaryButtom(
                          icon: Icons.help_rounded,
                          title: "Help Center",
                          buttonColor: Color.fromARGB(255, 78, 167, 115),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // HomeMenubar(selectMenu: onSelectMenu),
            ],
          ),
        ),
      ),
    );
  }
}
