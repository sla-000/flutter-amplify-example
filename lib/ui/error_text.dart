import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    Key? key,
    required this.error,
  }) : super(key: key);

  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Error: $error',
      style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.red[400]),
    );
  }
}
