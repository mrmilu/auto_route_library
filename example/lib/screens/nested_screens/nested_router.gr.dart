// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:example/screens/nested_screens/nested_screen.dart';
import 'package:example/screens/nested_screens/nested_screen_two.dart';

abstract class Routes {
  static const nestedScreen = '/';
  static const nestedScreenTwo = '/nested-screen-two';
}

class NestedRouter extends RouterBase {
  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.nestedScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => NestedScreen(),
          settings: settings,
        );
      case Routes.nestedScreenTwo:
        if (hasInvalidArgs<NestedScreenTwoArguments>(args)) {
          return misTypedArgsRoute<NestedScreenTwoArguments>(args);
        }
        final typedArgs =
            args as NestedScreenTwoArguments ?? NestedScreenTwoArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => NestedScreenTwo(
              title: typedArgs.title, message: typedArgs.message),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//NestedScreenTwo arguments holder class
class NestedScreenTwoArguments {
  final dynamic title;
  final String message;
  NestedScreenTwoArguments({this.title, this.message});
}