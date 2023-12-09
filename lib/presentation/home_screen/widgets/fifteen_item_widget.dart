import '../controller/home_controller.dart';
import '../models/fifteen_item_model.dart';
import 'package:first_travel_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FifteenItemWidget extends StatelessWidget {
  FifteenItemWidget(
    this.fifteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FifteenItemModel fifteenItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: fifteenItemModelObj.person!.value,
            height: 86.adaptSize,
            width: 86.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 6.v,
            bottom: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  fifteenItemModelObj.ledaduBeach!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  fifteenItemModelObj.duration!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 13.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBxsMap11,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Obx(
                      () => Text(
                        fifteenItemModelObj.australia!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 35.v,
            bottom: 34.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_20".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryBold_1,
                ),
                TextSpan(
                  text: "lbl_person".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
