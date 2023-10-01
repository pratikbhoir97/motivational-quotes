import 'package:flutter/material.dart';
// import 'package:motivationquote/home/quotes_messages_screen.dart';
import 'package:provider/provider.dart';

import 'auth/SplashScreen.dart';
import 'data/view_model/category_quotes_data.dart';
import 'home/categoryScreen.dart';
import 'home/quotes_messages_screen.dart';

// import 'auth/SplashScreen.dart';
// import 'data/view_model/category_quotes_data.dart';
// import 'home/categoryScreen.dart';

void main() {

  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  // var workSpace = await init();
  runApp(
//     MaterialApp(
//   home: MyApp(),
// )
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuotesModelData()),
      ],
      child: MyApp(),
    ),
  );

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: '/splash',
      theme: ThemeData.light(),
      // navigatorObservers: [firebaseLogEventAnalytics.observer],
      routes: {
        '/splash': (context) => SplashScreen(),
        '/category': (context) => CategoryScreen(),
        '/motivation': (context) => QuotesMessagesScreen(title: '',jsonPathfile: '',),

        // '/login': (context) => LoginScreen(),
      },
    );
  }
}

