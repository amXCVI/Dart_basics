import '1_factorization.dart';
import '1_gcd.dart';
import '1_lcm.dart';
import '2_bin_to_dec.dart';
import '2_dec_to_bin.dart';
import '3_find_numbers_in_str.dart';
import '4_get_world_count.dart';
import '5_filter_numbers.dart';
import '6_point.dart';
import '7_sqrt.dart';
import '8_user.dart';

void main () {
  /// 1
  gcd(-8, 12);
  lcm(0, 0);
  factorization(123);

  /// 2
  decToBinConverter(128);
  binToDecConverter('11111');

  /// 3
  getNumbersOfStr('12 je1 12.212.1 12.2 2312');

  /// 4
  getWorldCountOnList(['aaa', 'aaa', 'bbb', 'ccc', 'cc', 'aaa', 'cc', 'cc']);

  /// 5
  getNumbersList('one, ywo, two, two, yxz, zero, nine, light');

  /// 6
  Point point = Point(0, 0, 0);
  Point pointAnother = Point(1, 0, 0);
  point.distanceTo(pointAnother);

  /// 7
  num x = 1;
  x.sqrt(5);

  /// 8
  UserManager users = UserManager();
  for(int i = 0; i < 20; i++){
    users.addUser('email${i}@mail${i}.com');
    if (i % 3 == 0) {
      users.usersList[i].setAdmin();
    }
  }
  users.deleteUser('email11@mail11.com');
  users.deleteUser('email10@mail10.com');
  users.printAllEmails();
}