import 'package:event_explorer/features/start/export/start_export.dart';

abstract class BaseStartRepository {

  Future<(Failure?, List<Event>?)> getEvents(NoParameters parameters);
}
