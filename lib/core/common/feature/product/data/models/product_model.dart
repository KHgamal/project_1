import 'package:project_1/core/common/feature/product/data/models/location_coordinates_model.dart';
import 'package:project_1/core/common/feature/product/data/models/location_details_model.dart';
import 'package:project_1/core/common/feature/product/domain/entities/product.dart';
import 'package:project_1/core/enums/product_state.dart';

class ProductModel extends Product {
  const ProductModel(
      {required super.id,
      required super.createdAt,
      required super.productType,
      required super.senderId,
      super.billImage,
      super.shipmentDetails,
      super.withBill,
      super.temperature,
      super.humidity,
      super.state,
      required super.senderLocationDetails,
      required super.senderLocationCoordinates,
      required super.receiverLocationDetails,
      required super.receiverLocationCoordinates});
  ProductModel copyWith(
      {required String id,
      required DateTime createdAt,
      required String productType,
      required String senderId,
      String? billImage,
      String? shipmentDetails,
      bool withBill=false,
      String? temperature,
      String? humidity,
      ProductState state = ProductState.pending,
      required LocationDetailsModel senderLocationDetails,
      required LocationCoordinatesModel senderLocationCoordinates,
      required LocationDetailsModel receiverLocationDetails,
      required LocationCoordinatesModel receiverLocationCoordinates}) {
    return ProductModel(
      id: id,
      createdAt: createdAt,
      productType: productType,
      senderId: senderId,
      billImage: billImage,
      shipmentDetails: shipmentDetails,
      withBill: withBill,
      temperature: temperature,
      humidity: humidity,
      state: state,
      senderLocationDetails: senderLocationDetails,
      senderLocationCoordinates: senderLocationCoordinates,
      receiverLocationDetails: receiverLocationDetails,
      receiverLocationCoordinates: receiverLocationCoordinates,
    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      senderLocationCoordinates:
          LocationCoordinatesModel.fromJson(json['locationFrom']),
      senderLocationDetails:
          LocationDetailsModel.fromJson(json['senderDetails']),
      receiverLocationCoordinates:
          LocationCoordinatesModel.fromJson(json['locationTo']),
      receiverLocationDetails:
          LocationDetailsModel.fromJson(json['receiverDetails']),
      id: json['_id'],
      senderId: json['user'],
      productType: json['type'],
      shipmentDetails: json.containsKey('details') ? json['details'] : null,
      withBill: json.containsKey('withBill') ? json['withBill'] : false,
      state: json.containsKey('status') ? json['status'] : ProductState.pending,
      createdAt: DateTime.parse(json['createdAt']),
      temperature: json.containsKey('maxTemperatureDegree')
          ? json['maxTemperatureDegree']
          : null,
      humidity: json.containsKey('maxHumidityDegree')
          ? json['maxHumidityDegree']
          : null,
    );
  }
}
