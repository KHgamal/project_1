part of 'injection_container.dart';

final sl = GetIt.instance;

Future<void> init()async{

  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => prefs);

  _getProducts();

}

void _getProducts(){

  sl..registerFactory(() => GetProductsCubit(getAllProductsUseCase: sl()))
      ..registerLazySingleton(() => GetAllProductsUseCase(getProductsRepository: sl()))
      ..registerLazySingleton<ProductsRepository>(() => ProductsRepoImpl(productsRemoteDataSource: sl()))
      ..registerLazySingleton<ProductsRemoteDataSource>(() => ProductsRemoteDataSourceImpl(sl()))
      ..registerLazySingleton(() => http.Client());

}