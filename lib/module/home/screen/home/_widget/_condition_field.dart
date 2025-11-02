part of '../widget/home_screen.dart';

/// Condition field widget.
final class _ConditionField extends StatelessWidget {
  /// Default constructor.
  const _ConditionField(this._weatherData);

  /// Weather data.
  final WeatherData _weatherData;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenConditionTitle = localizations.homeScreenConditionTitle;
    final viewModel = context.read<HomeScreenViewModel>();
    final condition = viewModel.getWeatherCondition(_weatherData);
    final conditionDescription = viewModel.getWeatherConditionDescription(condition);

    return _WeatherField(title: homeScreenConditionTitle, data: conditionDescription);
  }
}
