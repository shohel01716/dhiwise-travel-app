import '../../../core/app_export.dart';

/// This class is used in the [eleven_item_widget] screen.
class ElevenItemModel {
  ElevenItemModel({
    this.arrowLeft,
    this.id,
  }) {
    arrowLeft = arrowLeft ?? Rx(ImageConstant.imgArrowLeft);
    id = id ?? Rx("");
  }

  Rx<String>? arrowLeft;

  Rx<String>? id;
}
