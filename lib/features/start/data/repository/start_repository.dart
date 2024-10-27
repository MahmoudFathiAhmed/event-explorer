import 'package:event_explorer/features/start/export/start_export.dart';

class StartRepository extends BaseStartRepository {
  final BaseStartRemoteDataSource baseStartRemoteDataSource;

  StartRepository(this.baseStartRemoteDataSource);


  @override
  Future<(Failure?, List<Event>?)> getEvents(
      NoParameters parameters) async {
    try {
      final result = await baseStartRemoteDataSource.getEvents(parameters);
      return (null, result);
    } on DioException catch (error) {
      return (ErrorHandler.handle(error).failure, null);
    }
  }
}
