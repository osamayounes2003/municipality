import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:municipality/presentation/screens/sollam_daragat_al_aamal.dart';
import 'package:municipality/presentation/screens/tasneef/tasneef_al_dowal.dart';

import '../presentation/screens/mokafaat_and_taweedat.dart';
import '../presentation/screens/tarmeez/tarmeez_beanat_al_baladea.dart';
import '../presentation/screens/tarmeez/tarmeez_genseat.dart';
import '../presentation/screens/tarmeez/tarmeez_mokhalafat.dart';
import '../presentation/screens/tarmeez/tarmeez_wazeefa.dart';

class AppRoutes {
  static const String tarmeezBeanatAlBaladea = '/';
  static const String tarmeezGenseat = '/tarmeez_genseat';
  static const String tarmeezMokhalafat = '/tarmeez_mokhalafat';
  static const String tarmeezWazeefa = '/tarmeez_wazeefa';
  static const String tasneefAlDowal = '/tasneef_al_dowal';
  static const String mokafaatAndTaweedat = '/mokafaat_and_taweedat';
  static const String sollamDaragatAlAamal = '/sollam_daragat_al_aamal';
  static List<GetPage> routes = [
    GetPage(name: tarmeezBeanatAlBaladea, page: () =>  TarmeezBeanatAlBaladea()),
    GetPage(name: tarmeezGenseat, page: () => const TarmeezGenseat()),
    GetPage(name: tarmeezMokhalafat, page: () => TarmeezMokhalafat()),
    GetPage(name: tarmeezWazeefa, page: () => TarmeezWazeefa()),
    GetPage(name: tasneefAlDowal, page: () => const TasneefAlDowal()),
    GetPage(name: mokafaatAndTaweedat, page: () => const MokafaatAndTaweedat()),
    GetPage(name: sollamDaragatAlAamal, page: () => const SollamDaragatAlAamal())
  ];
}
