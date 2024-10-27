import 'package:event_explorer/features/start/export/start_export.dart';

class GetEventsUseCase extends BaseUseCase<List<Event>, NoParameters> {
  final BaseStartRepository baseStartRepository;

  GetEventsUseCase(this.baseStartRepository);

  @override
  Future<(Failure?, List<Event>?)> call(NoParameters parameters) async {
    return await baseStartRepository.getEvents(parameters);
  }
}

