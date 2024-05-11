import 'package:core_ui/widgets/elements/buttons/secondary_button.dart';
import 'package:core_ui/widgets/elements/texts/detail_text.dart';
import 'package:core_ui/widgets/elements/texts/medium_text.dart';
import 'package:core_ui/widgets/texts/text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/home_menubar.dart';
import 'package:product/products/presentation/card/slide_image.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  // void onSelectMenu(String path) {
  //   context.go(path);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: SafeArea(
        child: Container(
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
                          TextTitle(title: "Weeraya Kosandilok"),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 66, 66, 66)),
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
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    color: Colors.black87,
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
                              color: Colors.white,
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
                                const Icon(
                                  Icons.payments_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                DetailText(title: "To Pay")
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.assignment_returned,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                DetailText(title: "To Ship")
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.local_shipping_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                DetailText(title: "To Receive")
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.chat_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                DetailText(title: "To Review")
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.white54,
                          width: double.infinity,
                          height: 0.5,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MediumText(
                          title: "Special Deal",
                          color: Colors.white,
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
                          color: Colors.white54,
                          width: double.infinity,
                          height: 0.5,
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
