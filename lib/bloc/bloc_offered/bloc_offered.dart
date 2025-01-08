import 'package:lear_bloc/bloc/bloc_offered/event_offers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lear_bloc/bloc/bloc_offered/state_offered.dart';
import 'package:lear_bloc/models/offered.dart';

class BlocOffered extends Bloc<OfferedEvent, StateOffered> {
  List<Offered> offeredList = [];

  BlocOffered(super.initialState) {
    on<InitOfferEvent>(
      (InitOfferEvent initOfferEvent, Emitter<StateOffered> emit) {},
    );

    on<AddOfferedEvent>(
      (AddOfferedEvent addOfferedEventevent, Emitter<StateOffered> emit) {},
    );

    on<RemoveOfferedEvent>(
        (RemoveOfferedEvent event, Emitter<StateOffered> emit) {});
  }
}
