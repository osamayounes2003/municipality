import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:municipality/presentation/screens/moazafeen/iqrar/iqrar.dart';
import 'package:municipality/presentation/screens/moazafeen/kharij/kharij_dawam.dart';
import 'package:municipality/presentation/screens/search/dawrat/presentation/pages/dawrat_search.dart';
import 'package:municipality/presentation/screens/search/employees/presentation/pages/employees.dart';
import 'package:municipality/presentation/screens/search/end_service/presentation/pages/end_service_search.dart';
import 'package:municipality/presentation/screens/search/hasmeat/presentation/pages/hasmeat_search.dart';
import 'package:municipality/presentation/screens/search/ijazat/presentation/pages/ijazat_search.dart';
import 'package:municipality/presentation/screens/search/intedab/presentation/pages/intedap.dart';
import 'package:municipality/presentation/screens/search/iqrar/presentation/pages/iqrar_search.dart';
import 'package:municipality/presentation/screens/search/kharij_dawam/presentation/pages/kharij_dawam_search.dart';
import 'package:municipality/presentation/screens/search/medical_examination/presentation/controllers/medical_examination_controller.dart';
import 'package:municipality/presentation/screens/search/medical_examination/presentation/pages/medical_examination_search.dart';
import 'package:municipality/presentation/screens/search/qarar_mobasharah/presentation/controllers/qarar_mobasharah_controller.dart';
import 'package:municipality/presentation/screens/search/tafweed/presentation/pages/tafweed_search.dart';
import 'package:municipality/presentation/screens/tarmeez/badal/badal.dart';
import 'package:municipality/presentation/screens/tarmeez/badal_countries/badal_countries.dart';
import 'package:municipality/presentation/screens/tarmeez/dissents/dissents.dart';
import 'package:municipality/presentation/screens/tarmeez/emp_degrees/emp_degrees.dart';
import 'package:municipality/presentation/screens/tarmeez/jobs/jobs.dart';
import 'package:municipality/presentation/screens/tarmeez/nations/nations.dart';
import 'package:municipality/presentation/screens/tarmeez/parts/parts.dart';

import '../../presentation/screens/search/dissents/presentation/pages/dissents_search.dart';
import '../../presentation/screens/search/promotion/presentation/pages/promotion_search.dart';
import '../../presentation/screens/search/qarar_mobasharah/presentation/pages/qarar_mobasharah_search.dart';
import '../../presentation/screens/tarmeez/baladia_info/view/baladia_info.dart';
import '../../presentation/screens/wait_all/beanat_wazaef_asasea.dart';
import '../../presentation/screens/moazafeen/tafweed/tafweed.dart';

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
  static const String kharijD = '/kharijD';
  static const String iqrar = '/iqrar';
  //search
  static const String employeeSearch = '/employee_search';
  static const String intedabSearch = '/intedab_search';
  static const String dawratSearch = '/dawrat_search';
  static const String dissentSearch = '/dissents_search';
  static const String hasmeatSearch = '/hasmeat_search';
  static const String ijazatSearch = '/ijazat_search';
  static const String kharijDawamSearch = '/kharij_dawam_search';
  static const String tafweedSearch = '/tafweed_search';
  static const String medicalExaminationSearch = '/medical_examination_search';
  static const String qararMobasharahSearch = '/qarar_mobasharah_search';
  static const String iqrarSearch = '/iqrar_search';
  static const String promotionSearch = '/promotion_search';
  static const String endServiceSearch = '/end_service_search';
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
    GetPage(
      name: AppRoutes.kharijD,
      page: () => const KharijDawam(),
    ),
    GetPage(
      name: AppRoutes.iqrar,
      page: () => const Iqrar(),
    ),
    GetPage(
      name: AppRoutes.employeeSearch,
      page: () => const EmployeesSearch(),
    ),
    GetPage(
      name: AppRoutes.intedabSearch,
      page: () => const IntedabSearch(),
    ),
    GetPage(
      name: AppRoutes.dissentSearch,
      page: () => const DissentsSearch(),
    ),
    GetPage(
      name: AppRoutes.dawratSearch,
      page: () => const DawratSearch(),
    ),
    GetPage(
      name: AppRoutes.kharijDawamSearch,
      page: () => const KharijDawamSearch(),
    ),
    GetPage(
      name: AppRoutes.ijazatSearch,
      page: () => IjazatSearch(),
    ),
    GetPage(
      name: AppRoutes.hasmeatSearch,
      page: () => const HasmeatSearch(),
    ),
    GetPage(
      name: AppRoutes.tafweedSearch,
      page: () => const TafweedSearch(),
    ),
    GetPage(
      name: AppRoutes.medicalExaminationSearch,
      page: () => const MedicalExaminationSearch(),
    ),
    GetPage(
      name: AppRoutes.qararMobasharahSearch,
      page: () => const QararMobasharahSearch(),
    ),
    GetPage(
      name: AppRoutes.iqrarSearch,
      page: () => const IqrarSearch(),
    ),
    GetPage(
      name: AppRoutes.promotionSearch,
      page: () => const PromotionSearch(),
    ),
    GetPage(
      name: AppRoutes.endServiceSearch,
      page: () => const EndServiceSearch(),
    ),
  ];
}
