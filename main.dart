import '1_factorization.dart';
import '1_gcd.dart';
import '1_lcm.dart';
import '2_bin_to_dec.dart';
import '2_dec_to_bin.dart';
import '3_find_numbers_in_str.dart';
import 'get_world_count.dart';

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
}