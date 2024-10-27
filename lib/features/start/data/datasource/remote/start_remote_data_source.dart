import 'package:event_explorer/features/start/export/start_export.dart';

abstract class BaseStartRemoteDataSource extends BaseAppRemoteDataSource {

  Future<List<Event>> getEvents(NoParameters parameters);
}

class StartRemoteDataSource extends BaseStartRemoteDataSource {


  @override
  Future<List<Event>> getEvents(NoParameters parameters) async {
    return await makeApiCall(
        url: NetworkConstants.getEvents,
        method: HttpMethod.get,
        fromJson: (data) =>
            data.map<Event>((event) => Event.fromJson(event)).toList());
  }
}
