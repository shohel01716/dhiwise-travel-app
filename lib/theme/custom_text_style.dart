import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  // Label text style
  static get labelLargeAmber400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeAmber400SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.64),
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryBold_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}
