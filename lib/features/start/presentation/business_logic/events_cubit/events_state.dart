part of 'events_cubit.dart';

enum EventsStatus { initial, loading, success, error }

extension EventsStatusX on EventsState {
  bool get isInitial => status == EventsStatus.initial;

  bool get isLoading => status == EventsStatus.loading;

  bool get isSuccess => status == EventsStatus.success;

  bool get isError => status == EventsStatus.error;
}

class EventsState extends Equatable {
  final EventsStatus status;
  final List<Event>? events;
  final String? error;

  const EventsState({
    this.status = EventsStatus.initial,
    this.events,
    this.error,
  });

  EventsState copyWith(
      {EventsStatus? status, List<Event>? events, String? error}) {
    return EventsState(
        status: status ?? this.status,
        events: events ?? this.events,
        error: error ?? this.error);
  }

  @override
  List<Object?> get props => [status, events, error];
}
