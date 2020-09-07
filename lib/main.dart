import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/Locale/localizationProvider.dart';
import 'package:provider/provider.dart';

import 'Locale/appLocalization.dart';
import 'home.dart';

main(List<String> args) {
  runApp(ChangeNotifierProvider.value(
      value: LocalProvider(), child: MyMaterial()));
}

class MyMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locProvider=Provider.of<LocalProvider>(context);

    return MaterialApp(
      locale: locProvider.appLocal,
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ar', ''),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: Home(),
    );
  }
}
