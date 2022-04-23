import 'dart:developer';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_example/amplifyconfiguration.dart';
import 'package:amplify_example/blocs/orders/bloc.dart';
import 'package:amplify_example/blocs/shop/bloc.dart';
import 'package:amplify_example/blocs/shop/state.dart';
import 'package:amplify_example/di.dart';
import 'package:amplify_example/durations.dart';
import 'package:amplify_example/l10n/generated/l10n.dart';
import 'package:amplify_example/models/ModelProvider.dart';
import 'package:amplify_example/ui/shop_calendar.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    di.reset();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amplify example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      supportedLocales: const <Locale>[
        Locale('en'),
        Locale('ru'),
      ],
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        MyLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const MyHomePage(title: 'Amplify example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    di.pushNewScope();
    _initDi();

    _initializeApp();
  }

  @override
  void dispose() {
    di.popScope();

    super.dispose();
  }

  Future<void> _initializeApp() async {
    await _configureAmplify();

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _configureAmplify() async {
    try {
      if (!Amplify.isConfigured) {
        final AmplifyDataStore _dataStorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);

        await Amplify.addPlugins([AmplifyAPI(), _dataStorePlugin]);

        await Amplify.configure(amplifyconfig);
      }
    } catch (error, stackTrace) {
      log('An error occurred while configuring Amplify', error: error, stackTrace: stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _isLoading
          ? const AnimatedSwitcher(
              duration: mDuration,
              child: Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          : AnimatedSwitcher(
              duration: mDuration,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: BlocBuilder<ShopBloc, ShopState>(
                  bloc: di<ShopBloc>(),
                  builder: (_, ShopState shopState) {
                    final bool hide = shopState.hasError || !shopState.hasData;

                    return AnimatedSwitcher(
                      duration: mDuration,
                      child: hide ? const SizedBox.shrink() : ShopCalendar(shop: shopState.shop!),
                    );
                  },
                ),
              ),
            ),
    );
  }

  void _initDi() {
    di.registerLazySingleton<ShopBloc>(
      () => ShopBloc(),
      dispose: (ShopBloc bloc) => bloc.close(),
    );

    di.registerLazySingleton<OrdersBloc>(
      () => OrdersBloc(
        initialShop: di<ShopBloc>().state.shop,
        shopStream: di<ShopBloc>().stream.map((ShopState? shopState) => shopState?.shop),
      ),
      dispose: (OrdersBloc bloc) => bloc.close(),
    );
  }
}
