import 'package:project_1/core/enums/product_state.dart';

class Product{

  final String id;
  final String productType;
  final String senderId;
  final Location senderLocation;
  final Location receiverLocation;
  final String? billImage;
  final String? shipmentDetails;
  final bool withBill;
  final ProductState state;
  final String? temperature;
  final String? humidity;
  final DateTime createdAt;

  const Product({
    required this.id,
    required this.receiverLocation,
    required this.senderLocation,
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

}

class Location{

  final double xCoordinates;
  final double yCoordinates;
  final String area;
  final int phone;
  final String locationDetails;
  final String? buildingNumber;
  final String? floorNumber;
  final String? apartmentNumber;
  final String? specialMark;

  const Location({
    required this.xCoordinates,
    required this.yCoordinates,
    required this.area,
    required this.phone,
    required this.locationDetails,
     this.buildingNumber,
     this.floorNumber,
     this.apartmentNumber,
     this.specialMark,
});


}



