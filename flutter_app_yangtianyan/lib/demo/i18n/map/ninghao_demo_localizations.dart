import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class NinghaoDemoLocalizations {
  final Locale locale;

  NinghaoDemoLocalizations(this.locale);

  static NinghaoDemoLocalizations of(BuildContext context) {
    return Localizations.of<NinghaoDemoLocalizations>(
      context,
        NinghaoDemoLocalizations
    )
  }

  static Map<String,Map<String,String>> _localized = {
    "en" : {
      "title" : "hello"
    },
    "zh" : {
      "title" : "你好",
    }
  };

  String get title {
    return _localized[locale.languageCode]["title"];

  }

}

class NinghaoDemoLocalizationsDelegate extends LocalizationsDelegate<NinghaoDemoLocalizations> {
  NinghaoDemoLocalizationsDelegate();

  @override
  Future<NinghaoDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<NinghaoDemoLocalizations>(
      NinghaoDemoLocalizations(locale)
    );
  }

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<NinghaoDemoLocalizations> old) {
    // TODO: implement shouldReload
    return false;
  }



}