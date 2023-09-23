import 'package:dartz/dartz.dart';
import 'package:project_1/core/common/feature/product/data/dataSource/products_remote_data_source.dart';
import 'package:project_1/core/common/feature/product/domain/entities/product.dart';
import 'package:project_1/core/errors/exceptions.dart';
import 'package:project_1/core/errors/failure.dart';

import 'package:project_1/core/utils/typedefs.dart';

import '../../domain/repository/products_repository.dart';

class ProductsRepoImpl implements ProductsRepository{

  ProductsRepoImpl({required this.productsRemoteDataSource});

  final ProductsRemoteDataSource productsRemoteDataSource;

  @override
  ResultFuture<List<Product>> getAllProducts() async{

try {
  final result = await productsRemoteDataSource.getProducts();
  return Right(result);
}on ApiException catch(e){
  return Left(ApiFailure.fromException(e));
}

  }

}