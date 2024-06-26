import 'package:flutter/material.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoCurrenciesList',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      routes: routes,
    );
  }
}
