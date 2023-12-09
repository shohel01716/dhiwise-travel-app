import 'two_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [vacation_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VacationDetailsModel {
  Rx<List<TwoItemModel>> twoItemList =
      Rx(List.generate(1, (index) => TwoItemModel()));
}
