import 'package:flutter/material.dart';
import 'package:flutter_ui_app/Widgets/CardDetails.dart';
import 'package:flutter_ui_app/Widgets/color.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Text(
              'Selected Card',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, i) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    boxShadow: AppColors.neumorpShadow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        top: 150,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.neumorpShadow,
                            shape: BoxShape.circle,
                            color: Colors.white30,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        left: -300,
                        top: -100,
                        bottom: -100,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.neumorpShadow,
                            shape: BoxShape.circle,
                            color: Colors.white30,
                          ),
                        ),
                      ),

                      CardDetailes(),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
