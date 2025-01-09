import 'package:lear_bloc/models/offer.dart';

abstract class OffersEvent {}

final class InitOfferEvent extends OffersEvent {
  int skip;
  List<Offer> initOffers = [];
  InitOfferEvent({this.skip = 0, List<Offer>? initOffers});
}

final class FetchOffersEvent extends OffersEvent {
  int skip;
  List<Offer> initOffers = [];
  FetchOffersEvent({required this.skip, List<Offer>? initOffers});
}

final class RemoveOfferEvent extends OffersEvent {
  Offer offer;
  RemoveOfferEvent({required this.offer});
}

final class AddOfferEvent extends OffersEvent {
  Offer offer;
  AddOfferEvent({required this.offer});
}
