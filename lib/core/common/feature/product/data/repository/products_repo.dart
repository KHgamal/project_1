import 'package:project_1/core/common/feature/product/domain/entities/product.dart';

import 'package:project_1/core/utils/typedefs.dart';

import '../../domain/repository/products_repository.dart';

class ProductsRepo implements GetProductsRepository{
  //TODO: uncomment when dto is done
  //DataSource dataSource;
  //productsRepo(this.datSource);

  @override
  ResultFuture<List<Product>> getAllProducts() {
    // TODO: implement getAllProducts

    //dataSource.getAllProducts();
    throw UnimplementedError();
  }

}