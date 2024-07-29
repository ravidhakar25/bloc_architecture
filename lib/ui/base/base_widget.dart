import 'package:flutter/widgets.dart';

class BaseWidget extends StatelessWidget {
  final Widget child;

  const BaseWidget(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
