import 'package:flutter_test/flutter_test.dart';
import 'package:tap_invest_assignment/core/utils/extensions.dart';

void main() {
  group(
    'extension Utils:',
    () {
      test(
        'should extract number only when we call extractNumbers method',
        () {
          const value1 = "Amit@123";
          const value2 = "@123";
          const value3 = "Amit";

          expect(value1.extractNumbers(), 123);
          expect(value2.extractNumbers(), 123);
          expect(value3.extractNumbers(), 0);
        },
      );
      test(
        'should return true when number is within range',
        () {
          const value1 = 40000;
          const value2 = 60000;
          const value3 = 50000;
          const value4 = -80000;
          expect(value1.isValueWithinRange(50000, 100000), false);
          expect(value2.isValueWithinRange(50000, 100000), true);
          expect(value3.isValueWithinRange(50000, 100000), true);
          expect(value4.isValueWithinRange(50000, 100000), false);
        },
      );
    },
  );
}
