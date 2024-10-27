import 'package:get_it/get_it.dart';
import 'package:event_explorer/core/network/dio_factory.dart';

import 'package:event_explorer/features/start/data/datasource/remote/start_remote_data_source.dart';
import 'package:event_explorer/features/start/data/repository/start_repository.dart';
import 'package:event_explorer/features/start/domain/repository/base_start_repository.dart';
import 'package:event_explorer/features/start/domain/use_case/get_events_use_case.dart';
import 'package:event_explorer/features/start/presentation/business_logic/events_cubit/events_cubit.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void init() async {
    ///Dio Factory
    getIt.registerLazySingleton<DioFactory>(() => DioFactory());

    /// USE CASES
    getIt.registerLazySingleton(() => GetEventsUseCase(getIt()));

    /// REPOSITORIES
    getIt.registerLazySingleton<BaseStartRepository>(
        () => StartRepository(getIt()));

    ///DATA SOURCES
    getIt.registerLazySingleton<BaseStartRemoteDataSource>(
        () => StartRemoteDataSource());

    /// BLOCS
    getIt.registerFactory(() => EventsCubit(getIt()));
  }
}
