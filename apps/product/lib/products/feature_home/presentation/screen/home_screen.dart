import 'package:core_libs/depedency_injection/get_it.dart';
import 'package:core_ui/theme/theme_provider.dart';
import 'package:core_ui/widgets/appbar/home_appbar.dart';
import 'package:core_ui/widgets/loading_indicator/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/feature_home/domain/port_product.dart/service.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/catalog.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/home_jumbutton.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/home_menubar.dart';
import 'package:product/products/feature_home/presentation/viewmodels/home_viewmodel.dart';
import 'package:product/products/mocks/products.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  void initState() {
    super.initState();
    Future((){
      ref.read(homeViewModelProvider.notifier).getProducts();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    final homeVM = ref.watch(homeViewModelProvider);
    final color = ref.watch(appThemeProvider).themeColor;


    return Scaffold(
      backgroundColor: color.backgroundColorPrimary,
      body: SafeArea(
        child: Column(
          children: [
            const HomeAppBar(),
             homeVM.loading
                ? const Expanded(
                    child: Center(child: Loading()),
                  )
                : 
                Expanded(
                    child: ListView.builder(
                    itemCount: homeVM.categories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        key: UniqueKey(),
                        children: [
                          HomeJumButton(
                              url: categoryImages[homeVM.categories[index]]!,
                              title: homeVM.categories[index].toUpperCase(),
                              buttonTitle: 'ViewCollection'),
                          Catalog(
                              title: 'All products', products: homeVM.products[index]),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      );
                    },
                  )),
                  // HomeMenubar(selectMenu: tapMenubar,)
                            ],
        ),
      ),
    );
  }
}
