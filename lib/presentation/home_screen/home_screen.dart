import '../home_screen/widgets/fifteen_item_widget.dart';
import '../home_screen/widgets/items_item_widget.dart';
import '../home_screen/widgets/service_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/fifteen_item_model.dart';
import 'models/items_item_model.dart';
import 'models/service_item_model.dart';
import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:first_travel_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:first_travel_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:first_travel_app/widgets/app_bar/appbar_title_image.dart';
import 'package:first_travel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:first_travel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:first_travel_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 19.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 23.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  CustomSearchView(
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                  ),
                  SizedBox(height: 24.v),
                  _buildService(),
                  SizedBox(height: 27.v),
                  _buildTitle(),
                  SizedBox(height: 15.v),
                  _buildItems(),
                  SizedBox(height: 28.v),
                  _buildTitle1(),
                  SizedBox(height: 15.v),
                  _buildFifteen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.img170,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_hi_andy".tr,
              margin: EdgeInsets.only(right: 16.h),
            ),
            SizedBox(height: 1.v),
            Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgBxsMap11,
                ),
                AppbarSubtitleOne(
                  text: "lbl_netherlands".tr,
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAction,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 5.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildService() {
    return SizedBox(
      height: 97.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(
            left: 9.h,
            right: 4.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 21.h,
            );
          },
          itemCount: controller.homeModelObj.value.serviceItemList.value.length,
          itemBuilder: (context, index) {
            ServiceItemModel model =
                controller.homeModelObj.value.serviceItemList.value[index];
            return ServiceItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_frequently_visited".tr,
            style: CustomTextStyles.titleMedium18,
          ),
          Container(
            height: 8.v,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 9.v,
            ),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: theme.colorScheme.onError,
                dotColor: appTheme.blueGray100,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItems() {
    return SizedBox(
      height: 230.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 4.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.homeModelObj.value.itemsItemList.value.length,
          itemBuilder: (context, index) {
            ItemsItemModel model =
                controller.homeModelObj.value.itemsItemList.value[index];
            return ItemsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle1() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_on_budget_tour".tr,
            style: CustomTextStyles.titleMedium18,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleSmallOnError,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: controller.homeModelObj.value.fifteenItemList.value.length,
          itemBuilder: (context, index) {
            FifteenItemModel model =
                controller.homeModelObj.value.fifteenItemList.value[index];
            return FifteenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
