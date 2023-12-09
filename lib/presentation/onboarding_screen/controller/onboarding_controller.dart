import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/presentation/onboarding_screen/models/onboarding_model.dart';

/// A controller class for the OnboardingScreen.
///
/// This class manages the state of the OnboardingScreen, including the
/// current onboardingModelObj
class OnboardingController extends GetxController {
  Rx<OnboardingModel> onboardingModelObj = OnboardingModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.homeScreen,
      );
    });
  }
}
