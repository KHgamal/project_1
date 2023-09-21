import 'package:project_1/core/common/feature/product/domain/entities/product.dart';
import 'package:project_1/core/utils/typedefs.dart';

abstract class ProductsRepository{

  ResultFuture<List<Product>> getAllProducts();

}