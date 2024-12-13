import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:product_lifespan/features/barcode_scanner/domain/entity/product.dart';
import 'package:product_lifespan/features/barcode_scanner/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final http.Client client;

  ProductRepositoryImpl(this.client);

  @override
  Future<Product> getProductByBarcode(String barcode) async {
    final response = await client.get(
      Uri.parse('https://api.example.com/products/$barcode'),
    );

    if (response.statusCode == 200) {
      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Produto não encontrado');
    }
  }

  @override
  Future<void> saveProduct(Product product) async {
    final response = await client.post(
      Uri.parse('https://api.example.com/products'),
      body: product.toJson(),
    );

    if (response.statusCode != 200) {
      throw Exception('Erro ao salvar o produto');
    }
  }
}
