import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_screen/home_screen.dart';
import 'post/view_post.dart';
import 'post/add_post.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp
  ]);
  runApp(Wasteagram());
}

class Wasteagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wasteagram',
      routes: getRoutes(),
      initialRoute: '/',
    );
  }

  Map<String, WidgetBuilder> getRoutes() {
    return {

      '/': (context) => HomeScreen(),
      'view': (context) => ViewPost(),
      'add': (context) => AddPost(),
    };
  }
}