import 'package:lear_bloc/models/address.dart';
import 'package:lear_bloc/models/neighbor_main_service.dart';
import 'package:lear_bloc/models/requested_service_data.dart';

import 'date_time_slot.dart';

class NeighborSubService {
  // static final String PARTICIPIANT_TYPE_SINGLE = "SINGLE";
  // static final String PARTICIPIANT_TYPE_MULTIPLE = "MULTIPLE";

  NeighborSubService({
    this.id,
    this.serviceIconPath,
    this.title,
    this.subTitle,
    this.description,
    this.duration,
    this.needTools = false,
    this.participiant,
    this.neighborMainService,
    this.onDemand,
    this.availabilityCalendar,
    this.dateCreated,
    this.oneTime,
    this.requestedServiceData,
    this.adress,
  });

  final String? id;
  final String? serviceIconPath;
  final String? title;
  final String? subTitle;
  final String? description;
  final String? duration;
  final bool? needTools;
  final String? participiant;
  final NeighborMainService? neighborMainService;
  final bool? onDemand;
  final DateTimeSlot? availabilityCalendar;
  final DateTime? dateCreated;
  bool? oneTime;
  RequestedServiceData? requestedServiceData;
  Address? adress;
}
