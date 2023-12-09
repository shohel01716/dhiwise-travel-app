import '../controller/vacation_details_controller.dart';
import '../models/eleven_item_model.dart';
import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElevenItemWidget extends StatelessWidget {
  ElevenItemWidget(
    this.elevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ElevenItemModel elevenItemModelObj;

  var controller = Get.find<VacationDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Obx(
          () => CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            decoration: IconButtonStyleHelper.fillWhiteA,
            child: CustomImageView(
              imagePath: elevenItemModelObj.arrowLeft!.value,
            ),
          ),
        ),
      ),
    );
  }
}
