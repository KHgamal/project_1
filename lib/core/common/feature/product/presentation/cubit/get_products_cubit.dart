import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_1/core/common/feature/product/domain/entities/product.dart';
import 'package:project_1/core/common/feature/product/domain/usecase/get_all_products_use_case.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit({
   required GetAllProductsUseCase getAllProductsUseCase,
  }):
      _getAllProductsUseCase = getAllProductsUseCase,
       super(const GetProductsInitial());

  final GetAllProductsUseCase _getAllProductsUseCase;

  void getProducts()async{

    emit(const GettingProducts());

   final result = await _getAllProductsUseCase();

   result.fold((l) {
     emit(ProductsError(error: l.error));
   }, (r) {
     emit(ProductsLoaded(products: r));
   });
  }

}
