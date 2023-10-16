import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

import '../activities/activities_view.dart';
import '../events/events_view.dart';
import '../profile/profile_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: getViewForIndex(model.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.black54.withOpacity(0.6),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: [
            const BottomNavigationBarItem(
              label: 'Activities',
              icon: Icon(Icons.checklist_rounded),
            ),
            BottomNavigationBarItem(
              label: 'MahaliKenya',
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Image.asset(
                  'assets/images/mahali.png',
                  height: 4.5.h,
                  // width: 5.w,
                ),
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const ActivitiesView();
      case 1:
        return const EventsView();
      case 2:
        return const ProfileView();
      default:
        return const ActivitiesView();
    }
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
