import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'activities_viewmodel.dart';

class ActivitiesView extends StackedView<ActivitiesViewModel> {
  const ActivitiesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ActivitiesViewModel viewModel,
    Widget? child,

  ) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  ActivitiesViewModel viewModelBuilder(
    BuildContext context,

  ) =>
      ActivitiesViewModel();
}
