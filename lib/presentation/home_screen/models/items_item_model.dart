import '../../../core/app_export.dart';

/// This class is used in the [items_item_widget] screen.
class ItemsItemModel {
  ItemsItemModel({
    this.tahitiBeach,
    this.bxsHeartEleven,
    this.tahitiBeach1,
    this.price,
    this.id,
  }) {
    tahitiBeach = tahitiBeach ?? Rx(ImageConstant.imgRectangle22468);
    bxsHeartEleven = bxsHeartEleven ?? Rx(ImageConstant.imgBxsHeart11);
    tahitiBeach1 = tahitiBeach1 ?? Rx("Tahiti Beach");
    price = price ?? Rx("235");
    id = id ?? Rx("");
  }

  Rx<String>? tahitiBeach;

  Rx<String>? bxsHeartEleven;

  Rx<String>? tahitiBeach1;

  Rx<String>? price;

  Rx<String>? id;
}
