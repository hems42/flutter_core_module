import 'package:flutter/cupertino.dart';

import '../../../constants/enum/app_language_types_enum.dart';
import '../../../constants/enum/language_manager_types_enum.dart';
import '../abstract/ife_language_manager.dart';
import '../abstract/ife_language_service.dart';
import 'easy_localization/language_manager_easy_localization.dart';
class LanguageService implements ILanguageService {
  static LanguageService? _instance;
  late final ILanguageManager? _manager;
  late final BuildContext _context;
  static LanguageService? Instance(BuildContext context) {
    _instance ??= LanguageService._init(context);
    return _instance;
  }

  LanguageService._init(BuildContext context) {
    _context = context;
    _manager = _selectManager(LanguageManagerTypes.EASY_LOCALIZATION);
  }

  ILanguageManager? _selectManager(LanguageManagerTypes types) {
    switch (types) {
      case LanguageManagerTypes.EASY_LOCALIZATION:
        return LanguageManagerOfEasyLocalization.instance(_context);

      default:
        return LanguageManagerOfEasyLocalization.instance(_context);
    }
  }

  void dene() {
    print("lang servisi çalıştı");
    _manager?.dene2();
  }

  @override
  getLanguageKeys() {
    // TODO: implement getLanguageKeys
    throw UnimplementedError();
  }

  @override
  List getUtilStuffOfLanguageService() {
    return _manager!.getUtilStuffOfLanguageService();
  }

  @override
  void changeLangue(AppLanguageTypes type) {
    // TODO: implement changeLangue
  }

  @override
  // TODO: implement context
  BuildContext get context => _context;
}
