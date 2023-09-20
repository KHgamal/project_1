import 'package:project_1/core/common/feature/product/domain/entities/product.dart';
import 'package:project_1/core/common/feature/product/domain/repository/products_repository.dart';
import 'package:project_1/core/usecase/usecase.dart';
import 'package:project_1/core/utils/typedefs.dart';

class GetAllProductsUseCase extends UseCaseWithoutParams<List<Product>>{

  final GetProductsRepository getProductsRepository;

  const GetAllProductsUseCase({required this.getProductsRepository});

  @override
  ResultFuture<List<Product>> call() async{
    return getProductsRepository.getAllProducts();
  }


}