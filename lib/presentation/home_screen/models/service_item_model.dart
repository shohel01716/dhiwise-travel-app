import '../../../core/app_export.dart';

/// This class is used in the [service_item_widget] screen.
class ServiceItemModel {
  ServiceItemModel({
    this.iconButton,
    this.airport,
    this.id,
  }) {
    iconButton = iconButton ?? Rx(ImageConstant.imgGroup6);
    airport = airport ?? Rx("Airport");
    id = id ?? Rx("");
  }

  Rx<String>? iconButton;

  Rx<String>? airport;

  Rx<String>? id;
}
