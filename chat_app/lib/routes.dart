import 'package:chat_app/presentation/settings/accountPage.dart';
import 'package:chat_app/presentation/chat/chatPage.dart';
import 'package:chat_app/presentation/home/homepage.dart';
import 'package:chat_app/presentation/settings/localauth.dart';
import 'package:chat_app/presentation/settings/settingsPage.dart';
import 'package:chat_app/presentation/welcomePage.dart';
import 'package:go_router/go_router.dart';

class Routes_ {
  final GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => WelcomePage(),
      ),
      GoRoute(
        path: '/local-auth',
        builder: (context, state) => LocalAuth(),
      ),
      GoRoute(
        path: "/home",
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: "/settings",
        builder: (context, state) => SettingsPage(),
      ),
      GoRoute(
        path: "/account",
        builder: (context, state) => AccountPage(),
      ),
      GoRoute(
        path: "/chat",
        builder: (context, state) => ChatPage(),
      ),

    ],
  );
}
