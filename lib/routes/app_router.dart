

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_navigation/second_page.dart';
import 'package:auto_route_navigation/initial_page.dart';

import '../third_page.dart';

@MaterialAutoRouter( replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: InitialPage, initial: true),
    AutoRoute(page: SecondPage),
    AutoRoute<String>(page: ThirdPage),
  ],
)
class $AppRouter{

}