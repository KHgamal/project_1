import 'package:project_1/core/common/feature/product/domain/entities/location_details.dart';

class LocationDetailsModel extends LocationDetails {
  const LocationDetailsModel(
      {required super.area,
      required super.phone,
      required super.locationDetails,
      super.buildingNumber,
      super.floorNumber,
      super.apartmentNumber,
      super.specialMark});
      
  LocationDetailsModel copyWith(
      {String? area,
      String? phone,
      String? locationDetails,
      String? buildingNumber,
      String? floorNumber,
      String? apartmentNumber,
      String? specialMark}) {
    return LocationDetailsModel(
      area: area?? this.area,
      phone: phone?? this.phone,
      locationDetails: locationDetails??this.locationDetails,
      buildingNumber: buildingNumber,
      floorNumber: floorNumber,
      apartmentNumber: apartmentNumber,
      specialMark: specialMark,
    );
  }

  factory LocationDetailsModel.fromJson(Map<String, dynamic> json) {
    return LocationDetailsModel(
        area: json['area'] as String,
        phone: json['phone'] as String,
        locationDetails: json['details'] as String,
        buildingNumber:
            json.containsKey('buildingNumber') ? json['buildingNumber'] : null,
        floorNumber:
            json.containsKey('floorNumber') ? json['floorNumber'] : null,
        apartmentNumber: json.containsKey('apartmentNumber')
            ? json['apartmentNumber']
            : null,
        specialMark:
            json.containsKey('specialMark') ? json['specialMark'] : null);
  }
}
