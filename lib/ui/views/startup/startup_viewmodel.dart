import 'package:stacked/stacked.dart';
import 'package:mahalikenya/app/app.locator.dart';
import 'package:mahalikenya/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/authentication_service.dart';

class StartupViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future runStartupLogic() async {
    // 2. Check if the user is logged in
    if (_authenticationService.userLoggedIn()) {
      // 3. Navigate to HomeView
      _navigationService.replaceWith(Routes.homeView);
    } else {
      // 4. Or navigate to LoginView
      _navigationService.replaceWith(Routes.loginView);
    }
  }
}
