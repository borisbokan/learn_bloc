
import 'package:lear_bloc/models/neighbor_sub_service.dart';

class NeighborMainService {
  NeighborMainService({
    this.id,
    this.mainServiceIconPath,
    this.title,
    this.subTitle,
    this.description,
    this.duration,
    this.needTool = false,
    this.subServices,
  });

  int? id;
  String? mainServiceIconPath;
  String? title;
  String? subTitle;
  String? description;
  String? duration;
  bool? needTool;
  List<NeighborSubService>? subServices;
}
