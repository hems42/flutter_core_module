
import '../../../constants/enum/app_theme_types_enum.dart';

abstract class ICacheService {
  AppThemeTypes getCurrentThme();
  Future<bool> ensureInit();
}
