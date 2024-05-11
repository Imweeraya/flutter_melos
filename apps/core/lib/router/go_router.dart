
import 'package:go_router/go_router.dart';
import 'package:product/main.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/infa.dart/router/router.dart';
import 'package:product/screen/product_detail.dart';
import 'package:product/screen/user_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ProductHomePage(),
      routes: productRoutes
    ),
    GoRoute(
      path: '/user',
      builder: (context, state) {
        return UserScreen();
      },
    ),
  ],
);
