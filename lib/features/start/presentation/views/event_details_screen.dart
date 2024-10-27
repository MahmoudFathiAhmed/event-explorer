import 'package:event_explorer/core/utils/strings_manager.dart';
import 'package:event_explorer/features/start/data/models/event.dart';
import 'package:event_explorer/features/start/presentation/widgets/detailed_event_item.dart';
import 'package:flutter/material.dart';
class EventDetailsScreen extends StatelessWidget {
  final Event event;
  const EventDetailsScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsManager.eventDetails),
      ),
      body: DetailedEventItem(event: event),
    );
  }
}
