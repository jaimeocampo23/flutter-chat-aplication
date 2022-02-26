import 'package:flutter/cupertino.dart';
import 'package:realtimechat/pages/chat_page.dart';
import 'package:realtimechat/pages/loading_page.dart';
import 'package:realtimechat/pages/login_page.dart';
import 'package:realtimechat/pages/register_page.dart';
import 'package:realtimechat/pages/users_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'chat': (_) => ChatPage(),
  'loading': (_) => LoadingPage(),
  'register': (_) => RegisterPage(),
  'user': (_) => UsersPage(),
};
