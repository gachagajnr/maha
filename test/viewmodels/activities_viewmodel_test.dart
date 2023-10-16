import 'package:flutter_test/flutter_test.dart';
import 'package:mahalikenya/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ActivitiesViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
