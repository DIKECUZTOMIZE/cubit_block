import 'package:cubit_block/cubit_modify/cubit_privider_filse.dart';
import 'package:cubit_block/cubit_modify/dbHelper.dart';
import 'package:cubit_block/cubit_modify/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  /// Cubit :Injection:
  runApp(BlocProvider(
      create: (context) => CubitAndProvider(dbHelper: DbHelper.getinstance()),
      child: App()));

  /// Provider:Injection
  // runApp(ChangeNotifierProvider(
  //     create: (context) => CubitAndProvider(), child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}
