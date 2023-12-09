import 'package:first_travel_app/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:first_travel_app/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:first_travel_app/presentation/home_screen/home_screen.dart';
import 'package:first_travel_app/presentation/home_screen/binding/home_binding.dart';
import 'package:first_travel_app/presentation/vacation_details_screen/vacation_details_screen.dart';
import 'package:first_travel_app/presentation/vacation_details_screen/binding/vacation_details_binding.dart';
import 'package:first_travel_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:first_travel_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String homeScreen = '/home_screen';

  static const String vacationDetailsScreen = '/vacation_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: vacationDetailsScreen,
      page: () => VacationDetailsScreen(),
      bindings: [
        VacationDetailsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    )
  ];
}
