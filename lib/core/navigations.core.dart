import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:purity/service/navigation.service.dart';

/// navigate to this route
void go(
  R route, {
  Map<String, String> params = const <String, String>{},
  Map<String, dynamic> queryParams = const <String, dynamic>{},
  Object? extra,
}) =>
    NavigationService.context?.goNamed(
      route.name,
      params: params,
      queryParams: queryParams,
      extra: extra,
    );

/// pushing a screen to stack
void push(
  R route, {
  Map<String, String> params = const <String, String>{},
  Map<String, dynamic> queryParams = const <String, dynamic>{},
  Object? extra,
}) =>
    NavigationService.context?.pushNamed(
      route.name,
      params: params,
      queryParams: queryParams,
      extra: extra,
    );

/// pop current screen from stack then adding screen to stack
void pushReplacement(
  R route, {
  Map<String, String> params = const <String, String>{},
  Map<String, dynamic> queryParams = const <String, dynamic>{},
  Object? extra,
}) =>
    NavigationService.context?.pushReplacementNamed(
      route.name,
      params: params,
      queryParams: queryParams,
      extra: extra,
    );

/// removing current screen from stack
/// if you pass version with one it's mean that you will pop as an old way {}
void pop({int version = 2, dynamic data}) {
  assert([1, 2].contains(version), 'version can\'t be anything but 1 or 2');
  if (version == 1) Navigator.pop(NavigationService.context!, data);
  if (version == 2) NavigationService.context?.pop();
}
