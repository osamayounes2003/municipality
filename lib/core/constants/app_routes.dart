import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:municipality/presentation/screens/tarmeez/badal/badal.dart';
import 'package:municipality/presentation/screens/tarmeez/badal_countries/badal_countries.dart';
import 'package:municipality/presentation/screens/tarmeez/dissents/dissents.dart';
import 'package:municipality/presentation/screens/tarmeez/emp_degrees/emp_degrees.dart';
import 'package:municipality/presentation/screens/tarmeez/jobs/jobs.dart';
import 'package:municipality/presentation/screens/tarmeez/nations/nations.dart';
import 'package:municipality/presentation/screens/tarmeez/parts/parts.dart';

import '../../presentation/screens/tarmeez/baladia_info/view/baladia_info.dart';
import '../../presentation/screens/wait_all/beanat_wazaef_asasea.dart';
import '../../presentation/screens/wait_all/tafweed.dart';

class AppRoutes {
  static const String baladiaInfo = '/';
  static const String nations = '/nations';
  static const String dissents = '/dissents';
  static const String jobs = '/jobs';
  static const String badalCountries = '/badal_countries';
  static const String badal = '/badal';
  static const String empDegrees = '/emp_degrees';
  static const String parts = '/parts';

  //هظول مش للترميز
  static const String tafweed = '/tafweed';
  static const String beanatWazaefAsasea = '/beanat_wazaef_asasea';
  static List<GetPage> routes = [
    GetPage(
      name: baladiaInfo,
      page: () => const BaladiaInfo(),
    ),
    GetPage(
      name: nations,
      page: () => const Nations(),
    ),
    GetPage(
      name: dissents,
      page: () => const Dissents(),
    ),
    GetPage(
      name: jobs,
      page: () => Jobs(),
    ),
    GetPage(
      name: badalCountries,
      page: () => const BadalCountries(),
    ),
    GetPage(
      name: badal,
      page: () => const Badal(),
    ),
    GetPage(
      name: empDegrees,
      page: () => EmpDegrees(),
    ),
    GetPage(
      name: parts,
      page: () => const Parts(),
    ),
    //هظول مش للترميز
    GetPage(
      name: AppRoutes.tafweed,
      page: () => const Tafweed(),
    ),
    GetPage(
      name: AppRoutes.beanatWazaefAsasea,
      page: () => const BeanatWazaefAsasea(),
    ),
  ];
}
