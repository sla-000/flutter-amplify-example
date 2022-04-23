import 'package:amplify_example/utils/days.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('isWorkingWeekday, true', () {
    expect(isWorkingWeekday({0, 2}, DateTime(2022, 04, 18)), isTrue);
    expect(isWorkingWeekday({0, 2}, DateTime(2022, 04, 20)), isTrue);
  });

  test('isWorkingWeekday, false', () {
    expect(isWorkingWeekday({0, 2}, DateTime(2022, 04, 17)), isFalse);
    expect(isWorkingWeekday({0, 2}, DateTime(2022, 04, 19)), isFalse);
  });
}
