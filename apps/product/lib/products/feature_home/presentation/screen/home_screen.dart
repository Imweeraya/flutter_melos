import 'package:core_libs/depedency_injection/get_it.dart';
import 'package:core_ui/widgets/loading_indicator/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/feature_home/domain/port_product.dart/service.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/catalog.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/home_appbar.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/home_jumbutton.dart';
import 'package:product/products/feature_home/presentation/product_home_widgets/home_menubar.dart';
import 'package:product/products/mocks/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final IProductService service;

  List<List<ProductDisplay>> products = [];
  List<String> categories = [];

  bool isloading = false;

  // _HomePageState() {
  //   final http = DioService('https://fakestoreapi.com');
  //   final repo = ProductRepository(http);
  //   service = ProductService(repo);

  //   getProducts();
  // }

  @override
  void initState() {
    super.initState();
    isloading = true;
    service = getit.get<IProductService>();
    getProducts();
  }
  

  void getProducts() async {
    final categories = await service.getCatagories();
    final productsFetchers = categories.map((e) => service.getByCategory(e));
    final products = await Future.wait(productsFetchers);

    setState(() {
      this.categories = categories;
      this.products = products;
      isloading = false;
    });
  }

  void onSelectProduct(ProductDisplay product) {
    context.go('/detail' , extra: product);
    print(product.name);
  }

  void tapMenubar(path) {
    context.go(path);
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const HomeAppBar(),
            isloading
                ? const Expanded(
                    child: Center(child: Loading()),
                  )
                : 
                Expanded(
                    child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        key: UniqueKey(),
                        children: [
                          HomeJumButton(
                              url: categoryImages[categories[index]]!,
                              title: categories[index].toUpperCase(),
                              buttonTitle: 'ViewCollection'),
                          Catalog(
                              title: 'All products', products: products[index] , onSelectProduct: onSelectProduct,),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      );
                    },
                  )),
                  HomeMenubar(selectMenu: tapMenubar,)          ],
        ),
      ),
    );
  }
}
