import 'package:product_lifespan/features/barcode_scanner/domain/entity/product.dart';
import 'package:product_lifespan/features/barcode_scanner/domain/repository/product_repository.dart';

class GetProductByBarcodeUseCase {
  final ProductRepository repository;

  GetProductByBarcodeUseCase(this.repository);

  Future<Product> execute(String barcode) {
    return repository.getProductByBarcode(barcode);
  }
}