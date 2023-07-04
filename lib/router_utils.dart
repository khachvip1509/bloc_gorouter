import 'package:bloc_goroute/detail2/detail2.dart';
import 'package:go_router/go_router.dart';

import 'detail1/detail1_view.dart';
import 'detail3/detail3.dart';
import 'error_screen.dart';
import 'home.dart';

final GoRouter router = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
        path: "/",
        name: "home",
        builder: (context, state) => const HomePage(),
        // redirect: (context, state) {
        //   var dt = DateTime.now();

        //   var minute = dt.minute;
        //   print("Ken: $minute");
        //   if (dt.minute % 2 == 1) {
        //     return "/detail1/detail2/detail3";
        //   }
        //   return "/";
        // },
        routes: [
          GoRoute(
              path: "detail1",
              name: "detail1",
              builder: (context, state) => Detail1Page(),
              routes: [
                GoRoute(
                    path: "detail2",
                    name: "detail2",
                    builder: (context, state) => const Detail2Page(),
                    routes: [
                      GoRoute(
                          path: "detail3",
                          name: "detail3",
                          builder: (context, state) => const Detail3Page())
                    ])
              ])
        ]),
  ],
);
