import 'package:flutter/material.dart';
import 'package:vinipx/widgets/theme_inherited_widget.dart';

import 'config/themes.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: true,
      child: VinipxHome(),
    );
  }
}

class VinipxHome extends StatelessWidget {
  const VinipxHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vinicius Peixoto Fagundes',
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      home: HomePage(),
    );
  }
}
