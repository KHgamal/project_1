import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_1/core/common/feature/product/data/models/product_model.dart';
import 'package:project_1/core/errors/exceptions.dart';
import 'package:project_1/core/utils/typedefs.dart';

abstract class ProductsRemoteDataSource{

  Future<List<ProductModel>> getProducts();

}

var url = Uri.parse('http://192.168.1.36:3000/api/v1/shipments');


class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource{

  ProductsRemoteDataSourceImpl(this._client);

  final http.Client _client;

  @override
  Future<List<ProductModel>> getProducts() async{

    // try{
      final response = await _client.get(url);
      if (response.statusCode != 200 && response.statusCode != 201) {

        throw ApiException(
            error: response.body, code: response.statusCode);
      }

      final data = jsonDecode(response.body) as DataMap;
      (data['data'] as List).removeAt(0);


       return (data['data'] as List).map((e){
         return ProductModel.fromJson(e);
       }).toList();

      
    // }on Exception
    // catch(e){
    //   throw(ApiException(
    //     error: e, code: ''
    //   ));
    //
    // }
    
  }


}