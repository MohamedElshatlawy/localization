import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Locale/appLocalization.dart';
import 'Locale/localizationProvider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var local = AppLocalizations.of(context);
    var locProvider = Provider.of<LocalProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Localization'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(local.translate('title')),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(local.translate('Message'))),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(onPressed: () {
                if (locProvider.appLocal.languageCode == 'ar') {
                  locProvider.changeLanguage(Locale('en'));
                } else {
                  locProvider.changeLanguage(Locale('ar'));
                }
              }),
            ],
          )
        ],
      ),
    );
  }
}
