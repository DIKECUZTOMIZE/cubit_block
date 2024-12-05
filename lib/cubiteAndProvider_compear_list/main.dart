import 'package:cubit_block/cubiteAndProvider_compear_list/counter_providerAndCubit.dart';
import 'package:cubit_block/cubiteAndProvider_compear_list/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  /// List:
  /// Cubit
  // runApp(BlocProvider(create: (context) => ListCubitandProvider(), child: App()));

  ///  Provider:
  runApp(ChangeNotifierProvider(
      create: (context) => ListCubitandProvider(), child: App()));

  /// Counter:
  ///Cubit:
  // runApp(BlocProvider(create: (context) => CounterCubitAadProvider(), child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}
