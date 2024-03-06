import 'package:flutter/material.dart';
import 'package:tulips/app/size_utils.dart';
import 'package:tulips/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumDMSansGray500 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray500,
        fontSize: 13.fSize,
      );
  static get bodyMediumDMSansGray700 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get bodySmallBluegray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodySmallInderGray50001 =>
      theme.textTheme.bodySmall!.inder.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallInderPrimary => theme.textTheme.bodySmall!.inder.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallInterGray50002 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray50002,
      );
  static get bodySmallInterOnPrimary =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPretendardGray50001 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallPretendardGray50002 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.gray50002,
      );
  static get bodySmallPretendardPrimary =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargeBluegray50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray50,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsBluegray90001 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray90001,
      );
  static get labelLargePoppinsGray70001 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray70001,
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
  static get labelMediumInterWhiteA700 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeff252626 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF252626),
        fontSize: 23.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumDMSansGray90001 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.64),
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
  static get titleMediumff252626 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF252626),
      );
  static get titleMediumff444444 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF444444),
      );
  static get titleSmallDMSansOnErrorContainer =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleSmallInterGray100 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff474747 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF474747),
      );
  static get titleSmallff5b0888 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF5B0888),
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
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
}
