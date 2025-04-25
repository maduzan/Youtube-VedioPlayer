import 'package:go_router/go_router.dart';
import 'package:ticket/view/home.dart';
import 'package:ticket/view/second.dart';
import 'package:ticket/view/vedioplayer.dart';
import 'package:ticket/contraller/apicall.dart';

class Routes {
  final GoRouter goRouter = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(path: '/second', builder: (context, state) => Second()),
      GoRoute(path: '/home', builder: (context, state) => Home()),
      // GoRoute(
      //   path: '/video/:id',
      //   builder: (context, state) {
      //     final videoId = state.pathParameters['id']!;
      //     return VideoPlayerPage(videoId: videoId);
      //   },
      // ),
    ],
  );
}
