import 'package:chef_app/core/routing/route_name.dart';
import 'package:chef_app/feature/auth/presentation/views/login_view.dart';
import 'package:chef_app/feature/home/presentation/views/food_detail_view.dart';
import 'package:chef_app/feature/profile/presentation/view/connect_us_view.dart';
import 'package:chef_app/feature/profile/presentation/view/profile_view.dart';
import 'package:chef_app/feature/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/presentation/views/home_view.dart';
import '../../feature/notification/presentation/views/notification_view.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);
// ignore: unused_element
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'shell',
);

class AppRoute {
  static GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteName.notification,
    routes: [
      GoRoute(
        path: RouteName.splash,
        pageBuilder: (context, state) => _buildPageWithSlideTransition(
          context: context,
          state: state,
          child: const SplashView(),
        ),
      ),
      GoRoute(
        path: RouteName.login,
        pageBuilder: (context, state) => _buildPageWithSlideTransition(
          context: context,
          state: state,
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: RouteName.home,
        pageBuilder: (context, state) => _buildPageWithSlideTransition(
          context: context,
          state: state,
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: RouteName.foodDetail,
        pageBuilder: (context, state) => _buildPageWithSlideTransition(
          context: context,
          state: state,
          child: const FoodDetailView(),
        ),
      ),
      GoRoute(
        path: RouteName.profile,
        pageBuilder: (context, state) => _buildPageWithSlideTransition(
          context: context,
          state: state,
          child: const ProfileView(),
        ),
      ),
      GoRoute(
        path: RouteName.connectUs,
        pageBuilder: (context, state) => _buildPageWithSlideTransition(
          context: context,
          state: state,
          child: const ConnectUsView(),
        ),
      ),
      GoRoute(
        path: RouteName.notification,
        pageBuilder: (context, state) => _buildPageWithSlideTransition(
          context: context,
          state: state,
          child: const NotificationView(),
        ),
      ),
    ],
  );
}

CustomTransitionPage<void> _buildPageWithSlideTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  TextDirection? textDirection,
}) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,

    transitionDuration: const Duration(milliseconds: 600),
    reverseTransitionDuration: const Duration(milliseconds: 600),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const slideBegin = Offset(1.0, 0.0);
      const slideEnd = Offset.zero;
      const slideCurve = Curves.easeOutCubic;
      var slideTween = Tween(
        begin: slideBegin,
        end: slideEnd,
      ).chain(CurveTween(curve: slideCurve));
      var slideAnimation = animation.drive(slideTween);

      const fadeBegin = 1.0;
      const fadeEnd = 0.0;
      var fadeOutTween = Tween(
        begin: fadeBegin,
        end: fadeEnd,
      ).chain(CurveTween(curve: Curves.easeOutCubic));
      var fadeOutAnimation = secondaryAnimation.drive(fadeOutTween);

      return AnimatedBuilder(
        animation: secondaryAnimation,
        builder: (context, child) {
          return FadeTransition(
            opacity: fadeOutAnimation,
            child: SlideTransition(
              textDirection: textDirection ?? TextDirection.rtl,
              position: slideAnimation,
              child: child!,
            ),
          );
        },
        child: child,
      );
    },
  );
}
