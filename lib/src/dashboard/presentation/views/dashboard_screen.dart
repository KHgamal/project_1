import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/generated/l10n.dart';
import 'package:project_1/src/dashboard/presentation/providers/dashboard_controller.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});
  static const route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardController>(
      builder: (_,controller,__){
        return Scaffold(
          body: IndexedStack(
            index: controller.currentIndex,
            children: controller.screens,
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 0.8,color: const Color(0xff757575).withOpacity(0.5)
                    )
                )
            ),
            child: SizedBox(
              height: 75,
              child: BottomNavigationBar(
                onTap: controller.changeIndex,
                elevation: 0,
                currentIndex: controller.currentIndex,
                backgroundColor: Colors.white,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedItemColor: Colours.primaryColour,
                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),

                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Container(
                      width: 68,
                      height: 32,
                      decoration: BoxDecoration(
                        color: (controller.currentIndex == 0)?
                        Colours.accentColour:Colors.transparent,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Icon(
                        Icons.person_2_outlined,
                        color: (controller.currentIndex == 0)?
                        Colours.primaryColour:Colours.txtDetailedColor,
                      ),
                    ),label: S.of(context).navbar_profile,),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Container(
                      width: 68,
                      height: 32,
                      decoration: BoxDecoration(
                        color: (controller.currentIndex == 1)?
                        Colours.accentColour:Colors.transparent,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Icon(
                        Icons.local_offer_outlined
                        ,color: (controller.currentIndex == 1)?
                      Colours.primaryColour:Colours.txtDetailedColor,
                      ),
                    ),label: S.of(context).navbar_offers,),

                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Container(
                      width: 68,
                      height: 32,

                      decoration: BoxDecoration(
                        color: (controller.currentIndex == 2)?
                        Colours.accentColour:Colors.transparent,
                        borderRadius: BorderRadius.circular(28),

                      ),
                      child: Icon(
                        Icons.home,
                        color: (controller.currentIndex == 2)?
                        Colours.primaryColour:Colours.txtDetailedColor,
                      ),
                    ),label: S.of(context).navbar_main,),
                ],

              ),
            ),
          ),
        );
      },
    );
  }
}

