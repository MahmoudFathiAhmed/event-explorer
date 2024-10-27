import 'package:event_explorer/features/start/export/start_export.dart';

part 'events_state.dart';

class EventsCubit extends Cubit<EventsState> {
  GetEventsUseCase getEventsUseCase;

  EventsCubit(this.getEventsUseCase) : super(const EventsState());

  Future<void> getEvents() async {
    emit(state.copyWith(
        status: EventsStatus.loading, events: state.events));
    final result = await getEventsUseCase(const NoParameters());
    if (result.$1 != null) {
      emit(state.copyWith(
          status: EventsStatus.error, error: result.$1!.message));
    } else {
      emit(state.copyWith(status: EventsStatus.success, events: result.$2));
    }
  }
}
