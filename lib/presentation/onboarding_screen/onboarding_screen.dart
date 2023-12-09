import 'controller/onboarding_controller.dart';
import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primaryContainer,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgSubtract,
                      height: 490.v,
                      width: 375.h),
                  SizedBox(height: 33.v),
                  Container(
                      width: 297.h,
                      margin: EdgeInsets.symmetric(horizontal: 38.h),
                      child: Text("msg_we_are_here_to_make".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall!
                              .copyWith(height: 1.33))),
                  SizedBox(height: 6.v),
                  Opacity(
                      opacity: 0.8,
                      child: Container(
                          width: 271.h,
                          margin: EdgeInsets.only(left: 52.h, right: 50.h),
                          child: Text("msg_lorem_ipsum_is_simply".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleSmallBluegray400
                                  .copyWith(height: 1.57)))),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                      text: "lbl_get_started".tr,
                      margin: EdgeInsets.symmetric(horizontal: 24.h)),
                  SizedBox(height: 28.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_don_t_have_an_account2".tr,
                            style: CustomTextStyles.titleMediumSemiBold_1),
                        TextSpan(
                            text: "lbl_register".tr,
                            style: CustomTextStyles.titleMediumOnError)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ]))));
  }
}
