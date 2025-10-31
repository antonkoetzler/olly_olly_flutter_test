part of 'button_view_model.dart';

/// State of [ButtonViewModel].
final class ButtonState {
  /// Default constructor.
  ButtonState(this.onTapUp);

  /// [Button.onTapUp].
  final VoidCallback? onTapUp;

  /// [ValueNotifier] controlling the [TapStatusEnum].
  final _tapStatusController = ValueNotifier(TapStatusEnum.idle);

  /// Dispose function.
  void dispose() {
    _tapStatusController.dispose();
  }

  /// [_tapStatusController] getter.
  ValueNotifier<TapStatusEnum> get tapStatusController {
    return _tapStatusController;
  }

  /// Getter of [_tapStatusController]'s value.
  TapStatusEnum get tapStatus {
    return _tapStatusController.value;
  }

  /// [_tapStatusController] setter.
  set tapStatus(TapStatusEnum tapStatus) {
    _tapStatusController.value = tapStatus;
  }
}
