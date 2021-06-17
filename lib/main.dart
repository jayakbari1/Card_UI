import 'package:flutter/material.dart';
import 'package:flutter_ui_app/Widgets/color.dart';
import 'Widgets/Header.dart';
import 'Widgets/CardSection.dart';
import 'Widgets/ExpenceSection.dart';



void main() => runApp(MaterialApp(
  home: HomePage(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Circular'),
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 120,
            child: WalletHeader(),  //WallHeader is all about Header of the UI like name and notification Icon.
          ),

          //Here we used two Expanded Widget because we have 2 card section so they fill with same size
          Expanded(
              child: CardSection(), //This CardSection Contain like front side of MasterCard like
          ),
          Expanded(
              child: ExpenceSection(),
          ),
        ],
      ),
    );
  }
}
