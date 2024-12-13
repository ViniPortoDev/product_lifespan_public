class Product {
  String id;
  String barcode;
  DateTime? manufactureDate;
  DateTime? expirationDate;
  String? shelfLife;

  Product({
    required this.id,
    required this.barcode,
    this.manufactureDate,
    this.expirationDate,
    this.shelfLife,
  });

  void calculateShelfLife() {
    if (manufactureDate != null && expirationDate != null) {
      final difference = expirationDate!.difference(manufactureDate!);
      shelfLife = '${difference.inDays} dias';
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'barcode': barcode,
      'manufactureDate': manufactureDate?.toIso8601String(),
      'expirationDate': expirationDate?.toIso8601String(),
      'shelfLife': shelfLife,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      barcode: json['barcode'],
      manufactureDate: json['manufactureDate'] != null
          ? DateTime.parse(json['manufactureDate'])
          : null,
      expirationDate: json['expirationDate'] != null
          ? DateTime.parse(json['expirationDate'])
          : null,
      shelfLife: json['shelfLife'],
    );
  }
}
