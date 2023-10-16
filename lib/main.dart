import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feathersjs/flutter_feathersjs.dart';
 import 'package:sizer/sizer.dart';
import 'package:mahalikenya/app/app.bottomsheets.dart';
import 'package:mahalikenya/app/app.dialogs.dart';
import 'package:mahalikenya/app/app.locator.dart';
import 'package:mahalikenya/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

const baseURL = "http://10.0.2.2:3030";

FlutterFeathersjs flutter = FlutterFeathersjs();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Dio dio = Dio(BaseOptions(baseUrl:baseURL));
  // socket.Socket io = socket.io(baseURL);

  // if (flutterFeathersJS.scketio ==null) {
    // flutterFeathersJS.scketio. = {};
    // flutterFeathersJS.configure(FlutterFeathersjs.socketioClient(io));

  flutter.configure(FlutterFeathersjs.restClient(dio));

  // }


  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        initialRoute: Routes.startupView,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
        navigatorObservers: [
          StackedService.routeObserver,
        ],
      );
    });
  }
}
