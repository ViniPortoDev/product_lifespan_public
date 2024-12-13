import 'package:flutter/material.dart';
import 'package:product_lifespan/app_widget.dart';
import 'package:product_lifespan/features/barcode_scanner/data/repository/product_repository_impl.dart';
import 'package:product_lifespan/features/barcode_scanner/domain/repository/product_repository.dart';
import 'package:http/http.dart' as http;
import 'package:product_lifespan/features/barcode_scanner/domain/usecase/get_product_by_barcode_usecase.dart';
import 'package:product_lifespan/features/barcode_scanner/domain/usecase/save_product_usecase.dart';
import 'package:product_lifespan/features/barcode_scanner/presentation/viewmodel/barcode_scanner_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<ProductRepository>(
          create: (_) => ProductRepositoryImpl(http.Client()),
        ),
        Provider<GetProductByBarcodeUseCase>(
          create: (context) => GetProductByBarcodeUseCase(context.read()),
        ),
        Provider<SaveProductUseCase>(
          create: (context) => SaveProductUseCase(context.read()),
        ),
        ChangeNotifierProvider(
          create: (context) => BarcodeScannerViewModel(
            getProductByBarcodeUseCase: context.read(),
            saveProductUseCase: context.read(),
          ),
        ),
      ],
      child: AppWidget(),
    ),
  );
}
