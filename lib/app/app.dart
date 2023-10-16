import 'package:mahalikenya/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:mahalikenya/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:mahalikenya/ui/views/home/home_view.dart';
import 'package:mahalikenya/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:mahalikenya/ui/views/login/login_view.dart';
import 'package:mahalikenya/services/authentication_service.dart';
import 'package:mahalikenya/ui/views/activities/activities_view.dart';
import 'package:mahalikenya/ui/views/profile/profile_view.dart';
import 'package:mahalikenya/ui/views/events/events_view.dart';
import 'package:mahalikenya/services/activities_service.dart';
import 'package:mahalikenya/services/activities_api_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: ActivitiesView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: EventsView),
    MaterialRoute(page: EventsView),
    MaterialRoute(page: EventsView),
    MaterialRoute(page: EventsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: ActivitiesService),
    LazySingleton(classType: ActivitiesApiService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
