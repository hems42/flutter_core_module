import 'package:flutter/material.dart';

import '../../../base/model/abstract/ife_base_language_keys_model.dart';
import '../../../constants/enum/app_language_types_enum.dart';

abstract class ILanguageService {
  IBaseLanguageKeysModel getLanguageKeys();

  void changeLangue(AppLanguageTypes type);

  dynamic getUtilStuffOfLanguageService();

  BuildContext get context;
}
