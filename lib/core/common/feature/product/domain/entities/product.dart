import 'package:project_1/core/enums/product_state.dart';

class Product{

  final String id;
  final String senderId;
  final Location senderLocation;
  final Location receiverLocation;

  final String productType;
  final String shipmentDescription;
  final bool withBill;
  final ProductState state;
  final String temperature;
  final String humidity;
  final DateTime createdAt;

  const Product({
    required this.id,
    required this.withBill,
    required this.createdAt,
    required this.state,
    required this.productType,
    required this.senderId,
    required this.humidity,
    required this.receiverLocation,
    required this.senderLocation,
    required this.shipmentDescription,
    required this.temperature,
});

}

class Location{

  final double xCoordinates;
  final double yCoordinates;
  final String area;
  final int phone;
  final String locationDetails;
  final String buildingNumber;
  final String floorNumber;
  final String apartmentNumber;
  final String specialMark;

  const Location({
    required this.xCoordinates,
    required this.yCoordinates,
    required this.area,
    required this.phone,
    required this.locationDetails,
    required this.buildingNumber,
    required this.floorNumber,
    required this.apartmentNumber,
    required this.specialMark,
});

}

