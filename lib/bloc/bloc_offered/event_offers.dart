import 'package:lear_bloc/models/offered.dart';

abstract class OfferedEvent {}

final class InitOfferEvent extends OfferedEvent {
  final int skip;
  InitOfferEvent({this.skip = 0});
}

final class FetchNextOffersEvent extends OfferedEvent {
  final int skip;
  FetchNextOffersEvent({required this.skip});
}

final class RemoveOfferedEvent extends OfferedEvent {
  final Offered offered;
  RemoveOfferedEvent({required this.offered});
}

final class AddOfferedEvent extends OfferedEvent {
  final Offered offered;
  AddOfferedEvent({required this.offered});
}
