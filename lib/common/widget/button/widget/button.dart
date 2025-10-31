import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';
import 'package:provider/provider.dart';

/// Button.
final class Button extends StatelessWidget {
  /// Default value of [text].
  static const textDefaultValue = kEmptyString;

  /// Default constructor.
  const Button({super.key, this.icon, this.iconSize, this.text = textDefaultValue, this.onTapUp})
    : assert(icon != null || text.length > 0, '[Button]: [icon] or [text] must be provided.');

  /// Icon.
  final IconData? icon;

  /// Size of the icon.
  final double? iconSize;

  /// Text.
  final String text;

  /// [GestureDetector.onTapUp].
  final VoidCallback? onTapUp;

  /// Build function.
  @override
  Widget build(context) {
    final onTapProvided = onTapUp != null;

    final themeExtension = context.resolveThemeExtension<ButtonThemeExtension>();
    final idleBackgroundColor = themeExtension.idleBackgroundColor;
    final hoverBackgroundColor = themeExtension.hoverBackgroundColor;
    final clickBackgroundColor = themeExtension.clickBackgroundColor;
    final border = themeExtension.border;
    final borderRadius = themeExtension.borderRadius;
    final contentPadding = themeExtension.contentPadding;

    return Provider(
      create: (_) => getIt<ButtonViewModel>(param1: onTapUp),
      child: Builder(
        builder: (context) {
          final viewModel = context.read<ButtonViewModel>();
          final onEnter = viewModel.onEnter;
          final onExit = viewModel.onExit;
          final onTapDown = viewModel.onTapDown;
          final onTapUp = viewModel.onTapUp;
          final onTapCancel = viewModel.onTapCancel;
          final state = viewModel.state;
          final tapStatusController = state.tapStatusController;

          return MouseRegion(
            cursor: onTapProvided ? SystemMouseCursors.click : SystemMouseCursors.basic,
            onEnter: onTapProvided ? (_) => onEnter() : null,
            onExit: onTapProvided ? (_) => onExit() : null,
            child: ValueListenableBuilder(
              valueListenable: tapStatusController,
              builder: (_, tapStatus, _) {
                return Container(
                  padding: contentPadding,
                  decoration: BoxDecoration(
                    color: switch (tapStatus) {
                      TapStatusEnum.idle => idleBackgroundColor,
                      TapStatusEnum.hover => hoverBackgroundColor,
                      TapStatusEnum.click => clickBackgroundColor,
                    },
                    border: border,
                    borderRadius: borderRadius,
                  ),
                  child: GestureDetector(
                    onTapDown: onTapProvided ? (_) => onTapDown() : null,
                    onTapUp: onTapProvided ? (_) => onTapUp() : null,
                    onTapCancel: onTapCancel,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (icon != null) Icon(icon, size: iconSize),
                        if (text.isNotEmpty) Expanded(child: Text(text, textAlign: TextAlign.center)),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
