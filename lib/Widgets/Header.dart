import 'package:flutter/material.dart';
import 'package:flutter_ui_app/Widgets/color.dart';


class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Kenil's Wallet",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(  //Create Container with height and width of 50. And decorate this container with Stack widget
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: AppColors.neumorpShadow,
                color: AppColors.primaryWhite,
              ),
              height: 50,
              width:50,
              child: Stack(
                children: [
                  Center(  //First this container fill orange color inside above container
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),


                  Center(  //Then after this container filled with primary white color and give orange color as a border using margin
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryWhite,
                      ),
                    ),
                  ),


                  Center(  //Put the icon inside it.
                    child: Icon(
                      Icons.notifications_on,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
