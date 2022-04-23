import 'package:amplify_example/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  MyLocalizations get l10n => MyLocalizations.of(this);
}
