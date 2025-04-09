import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_hasem/presentation/pages/employees_hasem.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_iqrar/presentation/controllers/iqrar_controller.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_itedab/presentation/pages/employees_itedab.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_kharij_dawam/presentation/pages/kharij_dawam.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_mobasharah_decision/presentation/pages/employees_mobasharah_decision.dart';
import 'package:municipality/presentation/screens/employees_and_workers/employees_tafweed/presentation/pages/tafweed.dart';
import 'package:municipality/presentation/screens/search/dawrat/presentation/pages/dawrat_search.dart';
import 'package:municipality/presentation/screens/search/employees/presentation/pages/employees.dart';
import 'package:municipality/presentation/screens/search/end_service/presentation/pages/end_service_search.dart';
import 'package:municipality/presentation/screens/search/hasmeat/presentation/pages/hasmeat_search.dart';
import 'package:municipality/presentation/screens/search/ijazat/presentation/pages/ijazat_search.dart';
import 'package:municipality/presentation/screens/search/intedab/presentation/pages/intedap.dart';
import 'package:municipality/presentation/screens/search/iqrar/presentation/pages/iqrar_search.dart';
import 'package:municipality/presentation/screens/search/kharij_dawam/presentation/pages/kharij_dawam_search.dart';
import 'package:municipality/presentation/screens/search/medical_examination/presentation/pages/medical_examination_search.dart';
import 'package:municipality/presentation/screens/search/tafweed/presentation/pages/tafweed_search.dart';
import 'package:municipality/presentation/screens/tarmeez/badal/badal.dart';
import 'package:municipality/presentation/screens/tarmeez/badal_countries/badal_countries.dart';
import 'package:municipality/presentation/screens/tarmeez/dissents/dissents.dart';
import 'package:municipality/presentation/screens/tarmeez/emp_degrees/emp_degrees.dart';
import 'package:municipality/presentation/screens/tarmeez/jobs/jobs.dart';
import 'package:municipality/presentation/screens/tarmeez/nations/nations.dart';
import 'package:municipality/presentation/screens/tarmeez/parts/parts.dart';
import 'package:municipality/presentation/screens/track_requests_of_employees/leave_requests/presentation/pages/leave_requests.dart';
import '../../presentation/screens/employees_and_workers/employee_cycle/presentation/pages/employees_employee_cycle.dart';
import '../../presentation/screens/employees_and_workers/employees_dissents/presentation/pages/employees_dissents.dart';
import '../../presentation/screens/employees_and_workers/employees_iqrar/presentation/pages/iqrar.dart';
import '../../presentation/screens/employees_and_workers/employees_medical_examination_request/presentation/pages/medical_examination_request.dart';
import '../../presentation/screens/search/dissents/presentation/pages/dissents_search.dart';
import '../../presentation/screens/search/promotion/presentation/pages/promotion_search.dart';
import '../../presentation/screens/search/qarar_mobasharah/presentation/pages/qarar_mobasharah_search.dart';
import '../../presentation/screens/tarmeez/baladia_info/view/baladia_info.dart';
import '../../presentation/screens/track_requests_of_employees/transferring_leave_balance/presentation/pages/transferring_leave_balance.dart';
import '../../presentation/screens/wait_all/beanat_wazaef_asasea.dart';

class AppRoutes {
  static const String baladiaInfo = '/';
  static const String nations = '/nations';
  static const String dissents = '/employee_dissents';
  static const String jobs = '/jobs';
  static const String badalCountries = '/badal_countries';
  static const String badal = '/badal';
  static const String empDegrees = '/emp_degrees';
  static const String parts = '/parts';

  //الموظفين والعاملين
  static const String employeesTafweed = '/employees_tafweed';
  static const String employeesBeanatWazaefAsasea =
      '/employees_beanat_wazaef_asasea';
  static const String employeesKharijD = '/employees_kharijD';
  static const String employeesIqrar = '/employees_iqrar';
  static const String employeesDissents = '/employees_dissents';
  static const String employeesEmployeeCycle = '/employees_employees_dissents';
  static const String employeesMedicalExaminationRequest =
      '/employees_examination_request';
  static const String employeesHasem = '/employees_hasem';
  static const String employeesMobasharahDecision =
      '/employees_mobasharah_decision';
  static const String employeesIntedab = '/employees_intedab';
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

  //متابعة الموظفين
  static const String leaveRequestsTracking = '/leave_requests_tracking';
  static const String transferringLeaveBalance = '/transferring_leave_balance';

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
      name: AppRoutes.employeesTafweed,
      page: () => const EmployeesTafweed(),
    ),
    GetPage(
      name: AppRoutes.employeesBeanatWazaefAsasea,
      page: () => const BeanatWazaefAsasea(),
    ),
    GetPage(
      name: AppRoutes.employeesKharijD,
      page: () => const EmployeesKharijDawam(),
    ),
    GetPage(
      name: AppRoutes.employeesIqrar,
      page: () => EmployeesIqrar(),
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
    GetPage(
      name: AppRoutes.leaveRequestsTracking,
      page: () => const LeaveRequestsTracking(),
    ),
    GetPage(
      name: AppRoutes.transferringLeaveBalance,
      page: () => const TransferringLeaveBalance(),
    ),
    GetPage(
        name: AppRoutes.employeesDissents,
        page: () => const EmployeesDissents()),
    GetPage(
        name: AppRoutes.employeesEmployeeCycle,
        page: () => const EmployeesCycle()),
    GetPage(
        name: AppRoutes.employeesMedicalExaminationRequest,
        page: () => const EmployeesMedicalExaminationRequest()),
    GetPage(
      name: AppRoutes.employeesHasem,
      page: () => const EmployeesHasem(),
    ),
    GetPage(
      name: AppRoutes.employeesMobasharahDecision,
      page: () => const EmployeesMobasharahDecision(),
    ),
    GetPage(
      name: AppRoutes.employeesIntedab,
      page: () => const EmployeesItedab(),
    ),
  ];
}
