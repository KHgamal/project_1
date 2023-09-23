import 'package:equatable/equatable.dart';
import 'package:project_1/core/common/feature/product/domain/entities/location_coordinates.dart';
import 'package:project_1/core/common/feature/product/domain/entities/location_details.dart';
import 'package:project_1/core/enums/product_state.dart';

class Product extends Equatable{

  final String id;
  final String productType;
  final String senderId;
  final LocationDetails senderLocationDetails;
  final LocationCoordinates senderLocationCoordinates;
  final LocationDetails receiverLocationDetails;
  final LocationCoordinates receiverLocationCoordinates;
  final String? billImage;
  final String? shipmentDetails;
  final bool withBill;
  final ProductState state;
  final int? temperature;
  final int? humidity;
  final DateTime createdAt;

  const Product({
    required this.id,
    required this.senderLocationDetails,
    required this.senderLocationCoordinates,
    required this.receiverLocationDetails,
    required this.receiverLocationCoordinates,
    required this.createdAt,
    required this.productType,
    required this.senderId,
    this.withBill = false,
    this.state = ProductState.pending,
    this.humidity,
    this.shipmentDetails,
    this.temperature,
    this.billImage,
});

  @override
  List<Object?> get props => [id];

}





