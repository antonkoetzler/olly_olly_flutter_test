part of '../widget/home_screen.dart';

/// Location field widget.
final class _LocationField extends StatelessWidget {
  /// Default constructor.
  const _LocationField(this._location);

  /// Location name.
  final String _location;

  /// Build function.
  @override
  Widget build(context) {
    return _WeatherField(data: _location);
  }
}
