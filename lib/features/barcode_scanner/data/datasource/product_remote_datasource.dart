
import 'package:product_lifespan/features/barcode_scanner/domain/entity/product.dart';

abstract class ProductRemoteDataSource {
  Future<Product> fetchProduct(String barcode);
  Future<void> saveProductData(Product product);
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  @override
  Future<Product> fetchProduct(String barcode) async {
    // Simulação de API
    await Future.delayed(const Duration(seconds: 1));
    return Product(
      id: '1',
      barcode: barcode,
      manufactureDate: DateTime.now().subtract(const Duration(days: 30)),
      expirationDate: DateTime.now().add(const Duration(days: 60)),
    );
  }

  @override
  Future<void> saveProductData(Product product) async {
    // Simulação de salvar na API
    await Future.delayed(const Duration(seconds: 1));
    print('Produto salvo: ${product.toJson()}');
  }
}
