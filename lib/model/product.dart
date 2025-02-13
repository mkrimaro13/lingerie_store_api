class Product {
  int _id;
  String _nombre;
  String _enlaceImagen;
  String _descripcion;
  int _precio;
  String _talla;
  int _descuento;
  int _unidadesDisponibles;

  // Constructor
  Product({
    required int id,
    required String nombre,
    required String enlaceImagen,
    required String descripcion,
    required int precio,
    required String talla,
    required int descuento,
    required int unidadesDisponibles,
  })  : _id = id,
        _nombre = nombre,
        _enlaceImagen = enlaceImagen,
        _descripcion = descripcion,
        _precio = precio,
        _talla = talla,
        _descuento = descuento,
        _unidadesDisponibles = unidadesDisponibles;

  // Getters
  int get id => _id;
  String get nombre => _nombre;
  String get enlaceImagen => _enlaceImagen;
  String get descripcion => _descripcion;
  int get precio => _precio;
  String get talla => _talla;
  int get descuento => _descuento;
  int get unidadesDisponibles => _unidadesDisponibles;

  // Setters
  set id(int value) => _id = value;
  set nombre(String value) => _nombre = value;
  set enlaceImagen(String value) => _enlaceImagen = value;
  set descripcion(String value) => _descripcion = value;
  set precio(int value) => _precio = value;
  set talla(String value) => _talla = value;
  set descuento(int value) => _descuento = value;
  set unidadesDisponibles(int value) => _unidadesDisponibles = value;

  // Override toString() for better debugging
  @override
  String toString() {
    return 'Product(id: $_id, nombre: $_nombre, enlaceImagen: $_enlaceImagen, descripcion: $_descripcion, precio: $_precio, talla: $_talla, descuento: $_descuento, unidadesDisponibles: $_unidadesDisponibles)';
  }
}
