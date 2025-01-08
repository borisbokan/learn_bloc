import 'package:flutter/material.dart';
import 'package:lear_bloc/models/location.dart';

class Address {
  @required
  String? country;
  @required
  String? city;
  @required
  String? street;
  @required
  String? houseNumber;
  @required
  String? zipCode;
  @required
  Location? location;

  Address({
    this.country,
    this.city,
    this.street,
    this.houseNumber,
    this.zipCode,
    this.location,
  });

  factory Address.fromJson(Map<String, dynamic>? json) {
    Location? tempLocation;
    if (json?['location'] != null) {
      tempLocation = Location.fromJson(json?['location']);
    }

    return Address(
      country: json?['country'],
      city: json?['city'],
      street: json?['street'],
      houseNumber: json?['houseNumber'],
      zipCode: json?['zipCode'],
      location: tempLocation,
    );
  }

  Map<String, dynamic>? toJson() {
    //Map<String, dynamic> location = this.location.toJson();

    return {
      'country': country,
      'city': city,
      'street': street,
      'houseNumber': houseNumber,
      'zipCode': zipCode,
      'location': location,
    };
  }
}
