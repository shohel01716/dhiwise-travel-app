import '../../../core/app_export.dart';
import 'service_item_model.dart';
import 'items_item_model.dart';
import 'fifteen_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<ServiceItemModel>> serviceItemList = Rx([
    ServiceItemModel(
        iconButton: ImageConstant.imgGroup6.obs, airport: "Airport".obs),
    ServiceItemModel(
        iconButton: ImageConstant.imgGroup5.obs, airport: "Taxi".obs),
    ServiceItemModel(
        iconButton: ImageConstant.imgGroup4.obs, airport: "Hotel".obs),
    ServiceItemModel(
        iconButton: ImageConstant.imgGroup3.obs, airport: "More".obs)
  ]);

  Rx<List<ItemsItemModel>> itemsItemList = Rx([
    ItemsItemModel(
        tahitiBeach: ImageConstant.imgRectangle22468.obs,
        bxsHeartEleven: ImageConstant.imgBxsHeart11.obs,
        tahitiBeach1: "Tahiti Beach".obs,
        price: "235".obs),
    ItemsItemModel(
        tahitiBeach: ImageConstant.imgRectangle22468150x156.obs,
        bxsHeartEleven: ImageConstant.imgBxHeart21.obs,
        tahitiBeach1: "St. Lucia Mountain".obs,
        price: "182".obs)
  ]);

  Rx<List<FifteenItemModel>> fifteenItemList = Rx([
    FifteenItemModel(
        person: ImageConstant.imgRectangle22469.obs,
        ledaduBeach: "Ledadu Beach".obs,
        duration: "3 days 2 nights".obs,
        australia: "Australia".obs)
  ]);
}
