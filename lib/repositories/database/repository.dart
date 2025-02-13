import 'package:postgres/postgres.dart';
import 'package:rest_api/model/product.dart';
import 'package:rest_api/repositories/database/connection.dart';
import 'package:rest_api/repositories/interfaces/repository_interface.dart';

class DatabaseRepository implements Repository {
  @override
  Future<List<Product>> listProducts() async {
    try {
      Connection connection = await connectToDB();
      Result result = await connection.execute("select * from products");
      List<Product> products = result
          .map((row) => Product(
                id: int.parse(row[0].toString()),
                nombre: row[1] as String,
                enlaceImagen: row[2] as String,
                descripcion: row[3] as String,
                precio: int.parse(row[4].toString()),
                talla: row[5] as String,
                descuento: int.parse(row[6].toString()),
                unidadesDisponibles: int.parse(row[7].toString()),
              ))
          .toList();

      return products;
    } catch (error) {
      throw ('Error executing query:\n $error');
    }
  }
}
