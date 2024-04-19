import 'package:exam/headers.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();
  String homePage = '/';
  String detailPage = 'detail_page';

  Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomePage(),
    'detail_page': (context) => const DetailPage(),
  };
}
