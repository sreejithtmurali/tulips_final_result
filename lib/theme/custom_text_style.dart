import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  static var titleMediumDMSansOnPrimaryContainer;

  // Body text style
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallInderPrimary => theme.textTheme.bodySmall!.inder.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallInterRed400 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.red400,
      );
  static get bodySmallPretendardErrorContainer =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallPretendardRed200 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.red200,
      );
  static get bodySmallPretendardRed400 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.red400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargePoppinsBluegray900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargePoppinsGray700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumGray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get labelMediumInterGreen400 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterWhiteA70001 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumff252626 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF252626),
      );
  static get titleMediumff444444 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF444444),
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray500,
  );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray50001,
  );
  static get bodySmallInderGray50001 =>
      theme.textTheme.bodySmall!.inder.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallInterOnPrimary =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
    color: theme.colorScheme.primary,
  );

  // Title text style
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.blueGray900,
    fontSize: 22.fSize,
  );
  static get titleLargeSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );

  static get titleMediumInterBlack900e5 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900E5,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(0.64),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get pretendard {
    return copyWith(
      fontFamily: 'Pretendard',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inder {
    return copyWith(
      fontFamily: 'Inder',
    );
  }
}
