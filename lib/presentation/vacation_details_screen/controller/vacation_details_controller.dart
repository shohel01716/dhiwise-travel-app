import 'package:first_travel_app/core/app_export.dart';
import 'package:first_travel_app/presentation/vacation_details_screen/models/vacation_details_model.dart';

/// A controller class for the VacationDetailsScreen.
///
/// This class manages the state of the VacationDetailsScreen, including the
/// current vacationDetailsModelObj
class VacationDetailsController extends GetxController {
  Rx<VacationDetailsModel> vacationDetailsModelObj = VacationDetailsModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
