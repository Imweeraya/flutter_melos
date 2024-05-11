import 'package:core/layouts/buttom_navigation.dart';
import 'package:go_router/go_router.dart';
import 'package:product/main.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
import 'package:product/products/infa.dart/router/router.dart';
import 'package:product/screen/product_detail.dart';
import 'package:product/screen/user_screen.dart';

final routes = ['/', '/', '/','/', '/user'];

final router = GoRouter(routes: [
  ShellRoute(
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
            child: ButtonNavigation(
          location: state.matchedLocation,
          child: child,
        ));
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const ProductHomePage(),
        ),
        GoRoute(
          path: '/user',
          builder: (context, state) {
            return UserScreen();
          },
        ),
        GoRoute(
          path: '/detail',
          builder: (context, state) {
            final product = state.extra as ProductDisplay;
            return ProductDetailScreen(
              product: product,
            );
          },
        )
      ])
]);
