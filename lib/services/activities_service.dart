import 'package:mahalikenya/helpers/api.dart';

import '../app/app.locator.dart';
import '../models/activity.dart';
import 'activities_api_service.dart';

class ActivitiesService {
  final _apiService = locator<ActivitiesApiService>();

  Future<APIResponse<List<Activity>>> getArtists() async {
    // Check if user is logged in
    // if (_authenticationService.userLoggedIn()) {
    // Get the artists from the backend
    final allActivities = await _apiService.getActivities();
    print(allActivities);
    // Save to the database
    // await _databaseService.saveArtists(newArtists);

    return allActivities;
    // }

    // throw Exception('User must be logged in to see artists');
  }
}
