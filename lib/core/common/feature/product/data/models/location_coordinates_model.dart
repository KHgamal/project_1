import 'package:project_1/core/common/feature/product/domain/entities/location_coordinates.dart';

class LocationCoordinatesModel extends LocationCoordinates {

  LocationCoordinatesModel(
      {required super.xCoordinates, required super.yCoordinates});

  factory LocationCoordinatesModel.fromJson(Map<String, dynamic> json) {
    return LocationCoordinatesModel(
        xCoordinates: json.containsKey('coordinates')? json['coordinates'][0]:null,
        yCoordinates: json.containsKey('coordinates')? json['coordinates'][1]:null);
  }


  LocationCoordinatesModel copyWith({double? xCoordinates,double? yCoordinates}) {
    return LocationCoordinatesModel(
      xCoordinates: xCoordinates?? this.xCoordinates,
      yCoordinates: yCoordinates?? this.yCoordinates,
    );
  }
}
