part of '../widget/home_screen.dart';

/// Weather field widget.
final class _WeatherField extends StatelessWidget {
  /// Default constructor.
  const _WeatherField({required this.data, this.title});

  /// Title text (bold, optional).
  final String? title;

  /// Data text (normal weight).
  final String data;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final titleTextStyle = themeExtension.weatherFieldTitleTextStyle;
    final dataTextStyle = themeExtension.weatherFieldDataTextStyle;

    if (title != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title!, style: titleTextStyle),
          Text(data, style: dataTextStyle),
        ],
      );
    }

    return Text(data, textAlign: TextAlign.center, style: dataTextStyle);
  }
}
