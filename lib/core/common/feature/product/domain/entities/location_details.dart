import 'package:equatable/equatable.dart';

class LocationDetails extends Equatable{

  final String area;
  final String phone;
  final String locationDetails;
  final String? buildingNumber;
  final String? floorNumber;
  final String? apartmentNumber;
  final String? specialMark;

  const LocationDetails({
    required this.area,
    required this.phone,
    required this.locationDetails,
    this.buildingNumber,
    this.floorNumber,
    this.apartmentNumber,
    this.specialMark,
  });

  @override
  List<Object?> get props => [];

}