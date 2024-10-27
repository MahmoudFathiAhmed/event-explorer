import 'package:event_explorer/features/start/export/start_export.dart';

class DetailedEventItem extends StatelessWidget {
  final Event event;

  const DetailedEventItem({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppDouble.d16.r),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(AppDouble.d12.r),
          decoration: BoxDecoration(
            color: ColorsManager.cardBg,
            borderRadius: BorderRadius.circular(AppDouble.d16.r),
            border: Border.all(color: ColorsManager.border),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(event.name ?? StringsManager.emptyString,
                  style: TextStyles.font14PrimarySemiBold(),
                  textAlign: TextAlign.start),
              SizedBox(height: AppDouble.d8.h),
              Text(event.location ?? StringsManager.emptyString,
                  style: TextStyles.font18whiteSemibold(),
                  textAlign: TextAlign.start),
              SizedBox(height: AppDouble.d16.h),
              Text(event.time?.toDateTime12Hour() ?? StringsManager.emptyString,
                  style: TextStyles.font12whiteRegular()),
              SizedBox(height: AppDouble.d16.h),
              Text(event.description ?? StringsManager.emptyString,
                  style: TextStyles.font12GreyRegular()),
              SizedBox(height: AppDouble.d16.h),
              ElevatedButton(onPressed: (){
                showAppSnackBar(context, content: StringsManager.joinedSuccessfully);
              }, child: const Text(StringsManager.join))
            ],
          ),
        ),
      ),
    );
  }
}
