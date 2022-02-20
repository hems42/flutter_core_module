
import '../../../constants/enum/app_navigation_pages_enum.dart';
import '../../../constants/navigation/navigation_constants.dart';
import 'ife_navigation_service.dart';

mixin INavigationManager implements INavigationService {
  String getSelectedPageStringFromAppNavigationPagesEnum(
      AppNavigationPagesEnum pages) {
    switch (pages) {
      case AppNavigationPagesEnum.TEST_VIEW:
        return AppNavigationPageConstants.TEST_VIEW;

      case AppNavigationPagesEnum.DEFAULT:
        return AppNavigationPageConstants.DEFAULT;

      default:
        return AppNavigationPageConstants.NOT_FOUND;
    }
  }

}
