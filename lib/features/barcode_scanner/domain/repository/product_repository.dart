import 'package:product_lifespan/features/barcode_scanner/domain/entity/product.dart';

abstract class ProductRepository {
  Future<Product> getProductByBarcode(String barcode);
  Future<void> saveProduct(Product product);
}
