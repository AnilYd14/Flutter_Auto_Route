// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../initial_page.dart' as _i1;
import '../second_page.dart' as _i2;
import '../third_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      final args = routeData.argsAs<InitialRouteArgs>(
          orElse: () => const InitialRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.InitialPage(key: args.key),
      );
    },
    SecondRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SecondPage(),
      );
    },
    ThirdRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdRouteArgs>();
      return _i4.MaterialPageX<String>(
        routeData: routeData,
        child: _i3.ThirdPage(
          args.userName,
          args.phoneNumber,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          InitialRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SecondRoute.name,
          path: '/second-page',
        ),
        _i4.RouteConfig(
          ThirdRoute.name,
          path: '/third-page',
        ),
      ];
}

/// generated route for
/// [_i1.InitialPage]
class InitialRoute extends _i4.PageRouteInfo<InitialRouteArgs> {
  InitialRoute({_i5.Key? key})
      : super(
          InitialRoute.name,
          path: '/',
          args: InitialRouteArgs(key: key),
        );

  static const String name = 'InitialRoute';
}

class InitialRouteArgs {
  const InitialRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'InitialRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SecondPage]
class SecondRoute extends _i4.PageRouteInfo<void> {
  const SecondRoute()
      : super(
          SecondRoute.name,
          path: '/second-page',
        );

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i3.ThirdPage]
class ThirdRoute extends _i4.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({
    required String userName,
    required String phoneNumber,
    _i5.Key? key,
  }) : super(
          ThirdRoute.name,
          path: '/third-page',
          args: ThirdRouteArgs(
            userName: userName,
            phoneNumber: phoneNumber,
            key: key,
          ),
        );

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({
    required this.userName,
    required this.phoneNumber,
    this.key,
  });

  final String userName;

  final String phoneNumber;

  final _i5.Key? key;

  @override
  String toString() {
    return 'ThirdRouteArgs{userName: $userName, phoneNumber: $phoneNumber, key: $key}';
  }
}
