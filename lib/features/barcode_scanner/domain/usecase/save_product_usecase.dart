import 'package:product_lifespan/features/barcode_scanner/domain/entity/product.dart';
import 'package:product_lifespan/features/barcode_scanner/domain/repository/product_repository.dart';

class SaveProductUseCase {
  final ProductRepository repository;

  SaveProductUseCase(this.repository);

  Future<void> execute(Product product) {
    return repository.saveProduct(product);
  }
}