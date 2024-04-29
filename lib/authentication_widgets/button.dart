import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  Icon? icon;
  final String buttonText;

  RoundedButton({super.key, required this.buttonText, IconData? icon}) {
    if (icon != null) {
      this.icon = Icon(icon);
    }
  }

  click_callback() {
    print('Hello clicked');
  }

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton.icon(
              onPressed: click_callback,
              icon: icon!,
              label: Text(buttonText),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.deepOrange.shade100), // Set the background color
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: click_callback,
              child: Text(buttonText),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.deepOrange.shade100), // Set the background color
              ),
            ),
          );
  }
}
