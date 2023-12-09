import '../controller/home_controller.dart';
import '../models/items_item_model.dart';
import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsItemWidget extends StatelessWidget {
  ItemsItemWidget(
    this.itemsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ItemsItemModel itemsItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150.v,
            width: 156.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: itemsItemModelObj.tahitiBeach!.value,
                    height: 150.v,
                    width: 156.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    right: 8.h,
                  ),
                  child: Obx(
                    () => CustomIconButton(
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillPrimaryContainer,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: itemsItemModelObj.bxsHeartEleven!.value,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              itemsItemModelObj.tahitiBeach1!.value,
              style: CustomTextStyles.titleSmallOnPrimary,
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBxsMap11,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_polynesia".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      TextSpan(
                        text: "lbl_french".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Obx(
                () => Text(
                  itemsItemModelObj.price!.value,
                  style: CustomTextStyles.titleSmallOnPrimaryBold,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgStar,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  left: 57.h,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_4_4".tr,
                        style: CustomTextStyles.labelLargeAmber400SemiBold,
                      ),
                      TextSpan(
                        text: "lbl_32".tr,
                        style: CustomTextStyles.labelLargeSemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
