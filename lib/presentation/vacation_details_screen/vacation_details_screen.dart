import '../vacation_details_screen/widgets/two_item_widget.dart';
import 'controller/vacation_details_controller.dart';
import 'models/two_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/widgets/custom_elevated_button.dart';
import 'package:first_travel_app/widgets/custom_icon_button.dart';
import 'package:first_travel_app/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class VacationDetailsScreen extends GetWidget<VacationDetailsController> {
  const VacationDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 93.v),
              child: Column(
                children: [
                  SizedBox(
                    height: 711.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildTwo(),
                        _buildTitle(),
                        _buildDetail(),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Obx(
                            () => Container(
                              height: 8.v,
                              margin: EdgeInsets.only(top: 307.v),
                              child: AnimatedSmoothIndicator(
                                activeIndex: controller.sliderIndex.value,
                                count: controller.vacationDetailsModelObj.value
                                    .twoItemList.value.length,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: theme.colorScheme.onError,
                                  dotColor: appTheme.blueGray100,
                                  dotHeight: 8.v,
                                  dotWidth: 8.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 28.v),
                  _buildTitle1(),
                  SizedBox(height: 16.v),
                  _buildList(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildContent(),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 400.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount:
            controller.vacationDetailsModelObj.value.twoItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          TwoItemModel model =
              controller.vacationDetailsModelObj.value.twoItemList.value[index];
          return TwoItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 347.v,
          bottom: 93.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 35.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.customBorderTL30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 145.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_taj_mahal".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 13.v,
                        width: 10.h,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Text(
                        "msg_uttar_pradesh_india".tr,
                        style: CustomTextStyles.labelLargeOnPrimaryContainer,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_4_4".tr,
                              style:
                                  CustomTextStyles.labelLargeAmber400SemiBold,
                            ),
                            TextSpan(
                              text: "lbl_41_reviews".tr,
                              style: CustomTextStyles.labelLargeSemiBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 154.v,
              ),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillGrayTL20,
                child: CustomImageView(
                  imagePath: ImageConstant.imgHeart,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDetail() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_details".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 22.v),
            SizedBox(
              width: 312.h,
              child: Text(
                "msg_lorem_ipsum_dolor".tr,
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 2.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_reviews".tr,
            style: theme.textTheme.titleMedium,
          ),
          Text(
            "lbl_see_all2".tr,
            style: CustomTextStyles.titleSmallOnError,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 45.adaptSize,
            width: 45.adaptSize,
            margin: EdgeInsets.only(bottom: 87.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 3.v,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_jhone_kenoady".tr,
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "lbl_23_nov_2022".tr,
                          style: CustomTextStyles.bodyMediumBluegray300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.v),
                  CustomRatingBar(
                    alignment: Alignment.centerLeft,
                    initialRating: 0,
                  ),
                  SizedBox(height: 18.v),
                  SizedBox(
                    width: 266.h,
                    child: Text(
                      "msg_amet_minim_mollit".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 14.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_322".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  TextSpan(
                    text: "lbl_person2".tr,
                    style: CustomTextStyles.titleMediumBluegray400,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomElevatedButton(
            height: 46.v,
            width: 178.h,
            text: "lbl_book_now".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
            buttonTextStyle: CustomTextStyles.titleSmallPoppinsPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
