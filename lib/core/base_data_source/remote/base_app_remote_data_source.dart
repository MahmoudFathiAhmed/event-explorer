import 'package:event_explorer/core/network/dio_factory.dart';
import 'package:event_explorer/core/services/service_locator.dart';

abstract class BaseAppRemoteDataSource {
  late DioFactory dio;

  BaseAppRemoteDataSource() {
    dio = getIt.get<DioFactory>();
  }
}
