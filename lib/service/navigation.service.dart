import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:purity/presentation/pages/cart/cart.page.dart';
import 'package:purity/presentation/pages/home/cubit/tab_cubit.dart';
import 'package:purity/presentation/pages/home/home.page.dart';
import 'package:purity/presentation/pages/home/sub_pages/cards.sub.page.dart';
import 'package:purity/presentation/pages/home/sub_pages/food_product.sub.page.dart';
import 'package:purity/presentation/pages/login/login.page.dart';
import 'package:purity/presentation/pages/not_found/not_found.page.dart';
import 'package:purity/presentation/pages/sign_up/sign_up.page.dart';

enum R {
  ///  /
  home,

  ///  /login
  login,

  ///  /signUp
  signUp,

  ///  /cart
  cart,
}

class NavigationService {
  NavigationService._();

  static final _key = GlobalKey<NavigatorState>();
  static BuildContext? get context => _key.currentState?.context;
  static final router = GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: '/card',
    errorBuilder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        name: R.home.name,
        path: '/',
        builder: _buildHome,
      ),
      GoRoute(
        name: R.login.name,
        path: '/login',
        builder: _buildLogin,
      ),
      GoRoute(
        name: R.signUp.name,
        path: '/signUp',
        builder: _buildSignUp,
      ),
      GoRoute(
        name: R.cart.name,
        path: '/cart',
        builder: _buildCart,
      ),
    ],
  );
}

Widget _buildHome(_, GoRouterState state) {
  return BlocProvider(
    create: (context) => TabCubit(),
    child: const HomePage(),
  );
}

Widget _buildLogin(_, GoRouterState state) {
  return const LoginPage();
}

Widget _buildSignUp(_, GoRouterState state) {
  return const SignUpPage();
}

Widget _buildCart(_, GoRouterState state) {
  return const CartPage();
}
