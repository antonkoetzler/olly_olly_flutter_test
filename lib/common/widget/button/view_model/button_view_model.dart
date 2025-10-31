import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

part 'button_state.dart';

/// View model of [Button].
@injectable
final class ButtonViewModel {
  /// Default constructor.
  ButtonViewModel(@factoryParam VoidCallback? onTapUp) : _state = ButtonState(onTapUp);

  /// State.
  final ButtonState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MouseRegion.onEnter].
  void onEnter() {
    state.tapStatus = TapStatusEnum.hover;
  }

  /// [MouseRegion.onExit].
  void onExit() {
    state.tapStatus = TapStatusEnum.idle;
  }

  /// [GestureDetector.onTapDown].
  void onTapDown() {
    state.tapStatus = TapStatusEnum.click;
  }

  /// [GestureDetector.onTapUp].
  void onTapUp() {
    _state.tapStatusController.value = PlatformHelper.isDesktop ? TapStatusEnum.hover : TapStatusEnum.idle;
    _state.onTapUp?.call();
  }

  /// [GestureDetector.onTapCancel].
  void onTapCancel() {
    state.tapStatus = TapStatusEnum.idle;
  }

  /// [_state] getter.
  ButtonState get state {
    return _state;
  }
}
