import '../controller/home_controller.dart';
import '../models/service_item_model.dart';
import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ServiceItemWidget extends StatelessWidget {
  ServiceItemWidget(
    this.serviceItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ServiceItemModel serviceItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          Obx(
            () => CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(16.h),
              child: CustomImageView(
                imagePath: serviceItemModelObj.iconButton!.value,
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Obx(
            () => Text(
              serviceItemModelObj.airport!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
