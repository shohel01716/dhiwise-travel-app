import 'eleven_item_model.dart';
import '../../../core/app_export.dart';

/// This class is used in the [two_item_widget] screen.
class TwoItemModel {
  TwoItemModel({
    this.elevenItemList,
    this.id,
  }) {
    elevenItemList = elevenItemList ??
        Rx([ElevenItemModel(arrowLeft: ImageConstant.imgArrowLeft.obs)]);
    id = id ?? Rx("");
  }

  Rx<List<ElevenItemModel>>? elevenItemList;

  Rx<String>? id;
}
