import 'package:event_explorer/core/shared_widgets/ripple_loading.dart';
import 'package:event_explorer/core/utils/colors_manager.dart';
import 'package:event_explorer/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: RippleLoading(
      radius: AppDouble.d40,
      color: ColorsManager.primaryColor,
    ));
  }
}
