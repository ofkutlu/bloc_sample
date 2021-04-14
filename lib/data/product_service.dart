import 'package:bloc_sample/models/product.dart';

class ProductService {
  static List<Product> products;

  static ProductService _signleton = ProductService._internal();

  factory ProductService() {
    return _signleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(new Product(1, "Lenovo", 70000));
    products.add(new Product(2, "Monster", 8000));
    products.add(new Product(3, "MSI", 15000));
    products.add(new Product(4, "Acer", 5000));
    products.add(new Product(5, "Asus", 4000));

    return products;
  }
}
