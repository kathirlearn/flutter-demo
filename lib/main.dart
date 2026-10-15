import 'package:demo_test/avatar_widget.dart';
import 'package:demo_test/button-demo/buttonDemo.dart';
import 'package:demo_test/button-demo/elevatedButtonScreen.dart';
import 'package:demo_test/button-demo/mainGridPage.dart';
import 'package:demo_test/button-demo/mainListPage.dart';
import 'package:demo_test/counter.dart';
import 'package:demo_test/dynamicText/localJson.dart';
import 'package:demo_test/dynamicText/myGoogleFontsWidget.dart';
import 'package:demo_test/expand-flex/myExpandWidget.dart';
import 'package:demo_test/forms/myLogin.dart';
import 'package:demo_test/gestures/gesturesWidget.dart';
import 'package:demo_test/imageDemo.dart';
import 'package:demo_test/img/myCachedImageWidget.dart';
import 'package:demo_test/json/myLocalJsonWidget.dart';
import 'package:demo_test/myButtonWidget.dart';
import 'package:demo_test/myColumnWidget.dart';
import 'package:demo_test/myContainer.dart';
import 'package:demo_test/myGridViewBuilder.dart';
import 'package:demo_test/myGridWidget.dart';
import 'package:demo_test/myImageWidget.dart';
import 'package:demo_test/myListBuilderWidget.dart';
import 'package:demo_test/myListWidget.dart';
import 'package:demo_test/myRowWidget.dart';
import 'package:demo_test/myStackWidget.dart';
import 'package:demo_test/myStatefulWidget.dart';
import 'package:demo_test/myStatelessWidget.dart';
import 'package:demo_test/productCatlog.dart';
import 'package:demo_test/quotes/quotesScreen.dart';
import 'package:demo_test/restaurant.dart';
import 'package:demo_test/screens/homeScreen.dart';
import 'package:demo_test/screens/profile.dart';
import 'package:demo_test/screens/settings.dart';
import 'package:demo_test/sheet/bottomSheetWidget.dart';
import 'package:demo_test/socialMediaFeed.dart';
import 'package:demo_test/swiggy_clone/swiggyLoginScreen.dart';
import 'package:demo_test/text_widget.dart';
import 'package:demo_test/ticTocBoard.dart';
import 'package:demo_test/usefulWidgets/myDrawerWidget.dart';
import 'package:demo_test/usefulWidgets/mySnackbarWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.greenAccent),
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => HomeScreen(),
        '/profile':(context) => Profile(),
        '/settings':(context) => Settings()
      },
      // home: Scaffold(
      //
      //   // appBar: AppBar(
      //   //   title: const Text("Music player"),
      //   // ),
      //   // body: const Center(
      //   //   child: MyStatelessWidget(text: "State Less man"),
      //   //   // child: MyStatefulWidget(),
      //   // ),
      //
      //   body:  Center(
      //     // child: MyStatelessWidget(text: "State Less man"),
      //     // child: MyStatefulWidget(),
      //     // child: MyContainer(),
      //     // child: MyRowWidget(),
      //     // child:MyColumnWidget(),
      //     // child: MyStackWidget(),
      //     // child: CounterApp(),
      //     // child: MyListWidget(),
      //     // child: MyRestaurant(),
      //     // child: MyGridWidget()
      //     // child: MyListBuilderWidget(),
      //     // child: SocialMediaFeed(),
      //     // child: MyGridViewBuilder(),
      //     // child: TicTocBoard(),
      //     // child: ProductCatlog(),
      //     // child: MyImageWidget(),
      //     // child: ImageDemo(),
      //     // child: MyButtonWidget()
      //     // child: MainListPage(),
      //     // child: MyLogin.new(),
      //     // child: MyCachedImageWidget(),
      //     // child: TextWidget(),
      //     // child: MyGoogleFontsWidget(),
      //     // child: LocalJson(),
      //     // child: MyDrawerWidget(),
      //     // child: MySnackBarWidget(),
      //     // child: GesturesWidget(),
      //     // child: ButtonDemo(),
      //     // child: MyLocalJsonWidget(),
      //     // child : QuotesScreen()
      //     // child: SignupPage(),
      //     // child: MyExpandWidget(),
      //     // child: BottomSheetWidget(),
      //     // child: ButtonDemo()
      //   ),
      //
      // ),
    );
  }
}


