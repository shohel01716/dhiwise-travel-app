import '../controller/vacation_details_controller.dart';
import '../models/eleven_item_model.dart';
import '../models/two_item_model.dart';
import '../widgets/eleven_item_widget.dart';
import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:first_travel_app/widgets/app_bar/appbar_title.dart';
import 'package:first_travel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TwoItemWidget extends StatelessWidget {
  TwoItemWidget(
    this.twoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwoItemModel twoItemModelObj;

  var controller = Get.find<VacationDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 400.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle22472,
              height: 400.v,
              width: 375.h,
              alignment: Alignment.center,
            ),
            CustomAppBar(
              height: 108.v,
              leadingWidth: 72.h,
              leading: AppbarLeadingIconbutton(
                imagePath: ImageConstant.imgArrowLeft,
                margin: EdgeInsets.only(left: 24.h),
              ),
              centerTitle: true,
              title: AppbarTitle(
                text: "msg_vacation_details".tr,
              ),
              itemCount: twoItemModelObj.elevenItemList!.value.length,
              itemBuilder: (context, index) {
                ElevenItemModel model =
                    twoItemModelObj.elevenItemList!.value[index];
                return ElevenItemWidget(
                  model,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
