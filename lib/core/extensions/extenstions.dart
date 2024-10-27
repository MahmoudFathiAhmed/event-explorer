import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  /// get screen height
  double get height => MediaQuery.sizeOf(this).height;

  /// get screen width
  double get width => MediaQuery.sizeOf(this).width;
}

extension NavigationExtesnions on BuildContext {
  /// push named route
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  /// push replacement named route
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  /// push named and remove until
  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  /// pop
  void pop() => Navigator.of(this).pop();
}
extension DateFormatting on String {
  // Convert to `yyyy-MM-dd HH:mm` format
  String toDateTime24Hour() {
    DateTime dateTime = DateTime.parse(this);
    return "${dateTime.year}-${_twoDigits(dateTime.month)}-${_twoDigits(dateTime.day)} ${_twoDigits(dateTime.hour)}:${_twoDigits(dateTime.minute)}";
  }

  // Convert to `yyyy-MM-dd hh:mm a` format (12-hour format with AM/PM)
  String toDateTime12Hour() {
    DateTime dateTime = DateTime.parse(this);
    String period = dateTime.hour >= 12 ? "pm" : "am";
    int hour = dateTime.hour % 12 == 0 ? 12 : dateTime.hour % 12;
    return "${dateTime.year}-${_twoDigits(dateTime.month)}-${_twoDigits(dateTime.day)} ${_twoDigits(hour)}:${_twoDigits(dateTime.minute)} $period";
  }

  // Helper method to format single-digit numbers as two digits
  String _twoDigits(int n) => n.toString().padLeft(2, '0');
}
