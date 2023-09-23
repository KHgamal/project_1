part of 'get_products_cubit.dart';

abstract class GetProductsState extends Equatable {
  const GetProductsState();
  @override
  List<Object> get props => [];
}

class GetProductsInitial extends GetProductsState {
  const GetProductsInitial();

}

class GettingProducts extends GetProductsState {
  const GettingProducts();

}

class ProductsLoaded extends GetProductsState {
  const ProductsLoaded({required this.products,});
  final List<Product> products;
}

class ProductsError extends GetProductsState {

  const ProductsError({required this.error,});
  final String error;

}