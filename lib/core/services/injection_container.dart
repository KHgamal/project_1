import 'package:get_it/get_it.dart';
import 'package:project_1/core/common/feature/product/data/dataSource/products_remote_data_source.dart';
import 'package:project_1/core/common/feature/product/data/repository/products_repository_impl.dart';
import 'package:project_1/core/common/feature/product/domain/repository/products_repository.dart';
import 'package:project_1/core/common/feature/product/domain/usecase/get_all_products_use_case.dart';
import 'package:project_1/core/common/feature/product/presentation/cubit/get_products_cubit.dart';
import 'package:http/http.dart' as http;

part 'injection_container.main.dart';