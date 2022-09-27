import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(iconTheme: IconThemeData(color: Colors.black)),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
