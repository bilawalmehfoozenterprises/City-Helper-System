import 'package:app/src/core/common_widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';

/// @param text - text to display on the button.
/// @param isLoading - if true, a loading indicator will be displayed instead of
/// the text.
/// @param isDisabled - if true, the onPressed callBack is disabled
/// @param onPressed - callback to be called when the button is pressed.
class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.text,
    this.isLoading = false,
    this.isDisabled = false,

    this.onPressed,
  });

  final String text;
  final bool isLoading;
  final bool isDisabled;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isDisabled || isLoading ? null : onPressed,
      child: isLoading
          ? const CenteredProgressIndicator()
          : Text(text, textAlign: TextAlign.center),
    );
  }
}
