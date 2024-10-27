import 'package:event_explorer/features/start/export/start_export.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventsCubit(getIt.get())..getEvents(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.appName),
        ),
        body: BlocConsumer<EventsCubit, EventsState>(
          listener: (eventContext, eventState) {
            if (eventState.isError) {
              showAppSnackBar(context,
                  content: eventState.error ?? StringsManager.emptyString);
            }
          },
          builder: (eventContext, eventState) {
            EventsCubit eventsCubit = eventContext.read<EventsCubit>();
            if (eventState.isInitial || eventState.isLoading) {
              return const AppLoadingWidget();
            }
            final events = eventState.events ?? [];
            if (events.isEmpty) {
              return const Center(child: Text(StringsManager.noEventsFound));
            } else {
              return RefreshIndicator(
                  onRefresh: () async => eventsCubit.getEvents(),
                  child: ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.all(AppDouble.d24.r),
                      itemBuilder: (context, index) =>
                          EventItem(event: events[index]),
                      separatorBuilder: (context, index) => SizedBox(
                            height: AppDouble.d10.h,
                          ),
                      itemCount: events.length));
            }
          },
        ),
      ),
    );
  }
}
