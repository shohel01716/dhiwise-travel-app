import '../controller/vacation_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VacationDetailsScreen.
///
/// This class ensures that the VacationDetailsController is created when the
/// VacationDetailsScreen is first loaded.
class VacationDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VacationDetailsController());
  }
}
