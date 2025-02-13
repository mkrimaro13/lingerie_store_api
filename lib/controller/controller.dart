import 'dart:convert';

import 'package:rest_api/services/products_service.dart';
import 'package:shelf/shelf.dart';

Future<Response> getProductsHandler(Request request) async {
  try{
      return Response.ok(await jsonEncodeProducts(),
      headers: {'Content-Type': 'application/json'});
  }catch(error){
     print('Error fetching products: $error');
    return Response.internalServerError(
      body: jsonEncode({'error': 'Failed to fetch products'}),
      headers: {'Content-Type': 'application/json'},
    );
  }

}
