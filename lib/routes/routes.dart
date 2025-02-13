import 'package:shelf_router/shelf_router.dart';
import 'package:rest_api/controller/controller.dart';

Router getRouter() {
  final router = Router();

  // Define routes
  router.get('/products', getProductsHandler);

  return router;
}
