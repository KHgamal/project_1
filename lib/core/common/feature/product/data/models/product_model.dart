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
      {String? id,
       DateTime? createdAt,
       String? productType,
       String? senderId,
      String? billImage,
      String? shipmentDetails,
      bool? withBill,
      int? temperature,
      int? humidity,
      ProductState? state,
       LocationDetailsModel? senderLocationDetails,
       LocationCoordinatesModel? senderLocationCoordinates,
       LocationDetailsModel? receiverLocationDetails,
       LocationCoordinatesModel? receiverLocationCoordinates}) {
    return ProductModel(
      id: id?? this.id,
      createdAt: createdAt?? this.createdAt,
      productType: productType?? this.productType,
      senderId: senderId?? this.senderId,
      billImage: billImage,
      shipmentDetails: shipmentDetails,
      withBill: withBill?? this.withBill,
      temperature: temperature,
      humidity: humidity,
      state: state?? this.state,
      senderLocationDetails: senderLocationDetails
      ?? this.senderLocationDetails,
      senderLocationCoordinates: senderLocationCoordinates
      ??this.senderLocationCoordinates,
      receiverLocationDetails: receiverLocationDetails
      ??this.receiverLocationDetails,
      receiverLocationCoordinates: receiverLocationCoordinates
      ?? this.receiverLocationCoordinates,
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
      state: json.containsKey('status') ?
      (json['status'] == 'Pending')?
      ProductState.pending:
      (json['status'] == 'onProgress')?
      ProductState.onProgress:
      (json['status'] == 'delivered')?
      ProductState.delivered:
      ProductState.canceled
          : ProductState.pending,
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
