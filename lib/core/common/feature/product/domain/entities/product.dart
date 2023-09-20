class Product{

  final Location senderLocation;
  final Location receiverLocation;
  final String shipmentDescription;
  final String weight;
  final String temperature;
  final String humidity;
  final String specialSign;

  const Product({
    required this.specialSign,
    required this.humidity,
    required this.receiverLocation,
    required this.senderLocation,
    required this.shipmentDescription,
    required this.temperature,
    required this.weight,
});

}

class Location{

  final String location;
  final String locationDetails;
  final String buildingNum;
  final String floorNum;
  final String apartmentNum;
  final String specialSign;
  final int mobileNumber;

  const Location({
    required this.apartmentNum,
    required this.buildingNum,
    required this.floorNum,
    required this.location,
    required this.locationDetails,
    required this.specialSign,
    required this.mobileNumber,
});

}