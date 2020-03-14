import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:themechange_flutter/constants/Assets.dart';
import 'package:themechange_flutter/constants/Globals.dart';
import 'package:themechange_flutter/models/ThemeChange.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String modeTitle = "Light Mode On";

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: getCard(

                InkWell(




                  onTap: (){


                    setState(() {

                      Provider.of<ThemeChange>(context).changeTheme();
                    });



                    if (Provider.of<ThemeChange>(context)
                        .isDark) {
                      this.modeTitle = "Dark Mode On";
                    } else {
                      this.modeTitle = "Light Mode On";
                    }

                  },

                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Globals.MarginHorizontal,
                      right: Globals.MarginHorizontal,

                    ),
                    child: Row(
                      children: <Widget>[

                        Expanded(

                          child: Center(
                            child: Text(

                              this.modeTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .apply(
//                                                  color: AppColors.BLACK,
                                  fontSizeDelta: -11.0),
                            ),
                          ),

                        ),
//
//
                        Padding(
                          padding: EdgeInsets.all(Globals.MarginVertical),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: Globals.MarginHorizontal),
                            child: Image.asset(
                                Provider.of<ThemeChange>(
                                    context)
                                    .isDark
                                    ? Assets.DARKIMAGE
                                    : Assets.SunImage,
                                fit: BoxFit.scaleDown),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          Expanded(
            flex: 12,
            child: Padding(
                padding: EdgeInsetsDirectional.only(
                    top: Globals.MarginVertical),
                child: getCard(SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.stretch,
                    children: <Widget>[
                      InkWell(
                        child: getContentWidget(
                            Globals.Change_Password,
                            context,
                            true),
                        onTap: () {

                        },
                      ),
//                                                 getContentWidget(Globals.Schedule_Settings,context,true),
                      InkWell(
                        child: getContentWidget(


                            Globals.Privacy_Policy,
                            context,
                            true),
                        onTap: () {

                        },
                      ),
                      InkWell(
                        child: getContentWidget(
                            Globals.About_TFI,
                            context,
                            true),
                        onTap: () {

                        },
                      ),
                      getContentWidget(
                          Globals.Help, context, false),
                      InkWell(
                        onTap: (){


                          Provider.of<ThemeChange>(context).isDark ? Provider.of<ThemeChange>(context).changeTheme():null;





                        },
                        child: getContentWidget(
                            Globals.Logout, context, false),
                      ),
                    ],
                  ),
                )



                )),
          )
        ],
      ));




  }


  Card getCard(Widget widget) {
    return Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: widget


    );
  }

}

Widget getContentWidget(String text, BuildContext context, bool isScreen) {
  return Padding(
    padding: EdgeInsets.only(
        top: Globals.MarginVertical + 10,
        right: Globals.MarginVertical,
        left: Globals.MarginVertical),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 9,
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .apply(fontSizeDelta: -16.0),
              ),
            ),
            Expanded(
              flex: 1,
              child: isScreen
                  ? Icon(
                Icons.chevron_right,
                color: Colors.grey,
              )
                  : Text(""),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: Globals.MarginVertical),
          child: Divider(

            height: 0.5,
//              color: AppColors.GRAY,
          ),
        )
      ],
    ),
  );
}


