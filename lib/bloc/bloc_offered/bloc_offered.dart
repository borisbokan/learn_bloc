import 'package:lear_bloc/Data/db_offers_mock.dart';
import 'package:lear_bloc/bloc/bloc_offered/event_offers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lear_bloc/bloc/bloc_offered/state_offered.dart';
import 'package:lear_bloc/models/offer.dart';

class BlocOffers extends Bloc<OffersEvent, StateOffers> {
  BlocOffers() : super(StateOffers()) {
    on(
      (_fetchoffers),
    );

    on<FetchOffersEvent>((FetchOffersEvent event, Emitter<StateOffers> emit) {
      emit(
          StateOffers(listOffers: [...state.listOffers!, ...event.initOffers]));
    });

    on<AddOfferEvent>(
      (AddOfferEvent addOfferEvent, Emitter<StateOffers> emit) {
        final newState = state.listOffers;
        newState?.add(addOfferEvent.offer);
        emit(StateOffers(listOffers: newState));
      },
    );

    on<RemoveOfferEvent>((RemoveOfferEvent event, Emitter<StateOffers> emit) {
      final newState = state.listOffers;
      newState?.removeWhere((item) => item.id == event.offer.id);

      emit(StateOffers(listOffers: newState));
    });
  }

  Future<void> _fetchoffers(
      InitOfferEvent event, Emitter<StateOffers> emit) async {
    List<Offer>? _offers = await DbOffersMock.fetchOffers();
    emit(StateOffers(listOffers: _offers));
  }
}
