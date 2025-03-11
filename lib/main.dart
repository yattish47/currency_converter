import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter_material_page.dart';

void main() {
  runApp(const MyApp());
}

// Types of widget
// 1. StatelessWidget - the state is immutable/ can't modify
// 2. SttatefulWidget - can modify
// 3. InhertiedWidget

// These are guidlines on  how to design a standard ui.
// 1. Material Desgin - google (for android)
// 2. Cupertino Design - apple (for apple)

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
