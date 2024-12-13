import 'package:flutter/material.dart';
import 'package:product_lifespan/core/theme/pl_theme.dart';
import 'package:product_lifespan/features/barcode_scanner/presentation/page/barcode_scanner_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Lifespan',
      theme: PlTheme.theme,
      home: BarcodeScannerPage(),
    );
  }
}
