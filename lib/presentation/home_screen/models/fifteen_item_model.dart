import '../../../core/app_export.dart';

/// This class is used in the [fifteen_item_widget] screen.
class FifteenItemModel {
  FifteenItemModel({
    this.person,
    this.ledaduBeach,
    this.duration,
    this.australia,
    this.id,
  }) {
    person = person ?? Rx(ImageConstant.imgRectangle22469);
    ledaduBeach = ledaduBeach ?? Rx("Ledadu Beach");
    duration = duration ?? Rx("3 days 2 nights");
    australia = australia ?? Rx("Australia");
    id = id ?? Rx("");
  }

  Rx<String>? person;

  Rx<String>? ledaduBeach;

  Rx<String>? duration;

  Rx<String>? australia;

  Rx<String>? id;
}
