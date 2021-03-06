import 'package:flutter/material.dart';
import 'package:flutter_core_module/core/init/theme/concrete/theme_notifier/theme_manager_notifier.dart';


import '../../../base/model/abstract/ife_base_theme_model.dart';
import '../../../constants/enum/app_theme_types_enum.dart';
import '../../../constants/enum/theme_manager_types_enum.dart';
import '../abstract/ife_theme_manager.dart';
import '../abstract/ife_theme_service.dart';

class ThemeService implements IThemeService {
  static final ThemeService _instance = ThemeService._init();
  late final IThemeManager? _manager;
  static ThemeService get instance => _instance;

  ThemeService._init() {
    _manager = _selectManager(ThemeManagerTypes.NOTIFIER);
  }

  IThemeManager _selectManager(ThemeManagerTypes types) {
    switch (types) {
      case ThemeManagerTypes.NOTIFIER:
        return ThemeManagerOfNotifier.instance;
      default:
        return ThemeManagerOfNotifier.instance;
    }
  }

  @override
  void changeTheme(AppThemeTypes type) {
    _manager!.changeTheme(type);
  }

  @override
  // TODO: implement theme
  ThemeData get theme => _manager!.theme;

  @override
  // TODO: implement themeModel
  IBaseThemeModel get themeModel => _manager!.themeModel;
}
