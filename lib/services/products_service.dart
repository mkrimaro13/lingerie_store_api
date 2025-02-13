import 'package:rest_api/repositories/database/repository.dart';
import 'package:rest_api/model/product.dart';
import 'dart:convert';

Future<String> jsonEncodeProducts() async {
  DatabaseRepository databaseRepository = DatabaseRepository();
  List<Product> products = await databaseRepository.listProducts();
  // Convert list of Product objects to JSON
  return jsonEncode(products
      .map((product) => {
            'id': product.id,
            'nombre': product.nombre,
            'enlaceImagen': product.enlaceImagen,
            'descripcion': product.descripcion,
            'precio': product.precio,
            'talla': product.talla,
            'descuento': product.descuento,
            'unidadesDisponibles': product.unidadesDisponibles,
          })
      .toList());
}
