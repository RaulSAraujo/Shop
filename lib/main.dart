import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            fontFamily: 'Lato',
            colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Colors.purple,
              onPrimary: Colors.white,
              secondary: Colors.cyan,
              onSecondary: Colors.black,
              error: Colors.red,
              onError: Colors.red,
              background: Colors.white,
              onBackground: Colors.white30,
              onSurface: Colors.black,
              surface: Colors.black,
            ),
          ),
          home: ProductsOverviewPage(),
          debugShowCheckedModeBanner: false,
          routes: {
            AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
          }),
    );
  }
}
