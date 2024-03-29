import 'package:flutter/material.dart';
import 'package:unit_converter/widgets/category_route.dart';

void main() => runApp(UnitConverterApp());

class UnitConverterApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      theme: ThemeData(
          fontFamily: 'Raleway',
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.black, displayColor: Colors.grey[600]),
          primaryColor: Colors.grey[500],
          textSelectionHandleColor: Colors.green[500]),
      home: CategoryRoute(),
    );
  }
}
