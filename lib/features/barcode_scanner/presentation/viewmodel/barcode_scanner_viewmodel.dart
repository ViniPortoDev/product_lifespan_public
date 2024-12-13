import 'package:flutter/material.dart';
import 'package:product_lifespan/features/barcode_scanner/domain/entity/product.dart';
import 'package:product_lifespan/features/barcode_scanner/domain/usecase/get_product_by_barcode_usecase.dart';
import 'package:product_lifespan/features/barcode_scanner/domain/usecase/save_product_usecase.dart';

class BarcodeScannerViewModel extends ChangeNotifier {
  final GetProductByBarcodeUseCase getProductByBarcodeUseCase;
  final SaveProductUseCase saveProductUseCase;

  BarcodeScannerViewModel({
    required this.getProductByBarcodeUseCase,
    required this.saveProductUseCase,
  });

  String barcode = '';
  bool isLoading = false;
  Product? product;

  Future<void> scanBarcode() async {
    barcode = '1234567890';
    notifyListeners();
  }

  Future<void> fetchProduct() async {
    isLoading = true;
    notifyListeners();

    try {
      product = await getProductByBarcodeUseCase.execute(barcode);
    } catch (e) {
      product = null;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> saveProduct() async {
    if (product != null) {
      product!.calculateShelfLife();
      await saveProductUseCase.execute(product!);
    }
  }
}
