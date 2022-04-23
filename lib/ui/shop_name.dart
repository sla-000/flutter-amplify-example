import 'package:amplify_example/blocs/shop/bloc.dart';
import 'package:amplify_example/blocs/shop/state.dart';
import 'package:amplify_example/di.dart';
import 'package:amplify_example/durations.dart';
import 'package:amplify_example/ui/error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopName extends StatelessWidget {
  const ShopName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      bloc: di<ShopBloc>(),
      builder: (_, ShopState snapshot) {
        final ShopState shopState = snapshot;

        if (shopState.hasError) {
          return AnimatedSwitcher(
            duration: sDuration,
            child: ErrorText(error: shopState.error!),
          );
        }

        if (shopState.hasData) {
          return AnimatedSwitcher(
            duration: sDuration,
            child: TitleText(text: shopState.shop!.name),
          );
        }

        return const AnimatedSwitcher(
          duration: sDuration,
          child: EmptyText(),
        );
      },
    );
  }
}

class EmptyText extends StatelessWidget {
  const EmptyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TitleText();
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: Theme.of(context).textTheme.headline5,
    );
  }
}

class LoadingText extends StatelessWidget {
  const LoadingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Loading...',
      style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.grey[400]),
    );
  }
}
