import 'package:project_1/core/common/feature/product/domain/entities/location_coordinates.dart';

class LocationCoordinatesModel extends LocationCoordinates {
  LocationCoordinatesModel(
      {required super.xCoordinates, required super.yCoordinates});
  factory LocationCoordinatesModel.fromJson(Map<String, dynamic> json) {
    return LocationCoordinatesModel(
        xCoordinates: json['coordinates'][0],
        yCoordinates: json['coordinates'][1]);
  }
  LocationCoordinatesModel copyWith({required double xCoordinates, required double yCoordinates}) {
    return LocationCoordinatesModel(
      xCoordinates: xCoordinates,
      yCoordinates: yCoordinates,
    );
  }
}
