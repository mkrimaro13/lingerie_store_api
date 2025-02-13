import 'package:rest_api/model/product.dart';

abstract class Repository{
  Future<List<Product>> listProducts();
}