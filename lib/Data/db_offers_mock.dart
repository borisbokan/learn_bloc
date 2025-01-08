import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:lear_bloc/models/offer.dart';

class DbOffersMock {
  static Future<List<Offer>?> fetchOffers() async {
    final String rawData = await rootBundle.loadString('assets/offers.json');

    final List<dynamic> data = json.decode(rawData);

    return data.map((json) => Offer.fromJson(json)).toList();
  }
}
