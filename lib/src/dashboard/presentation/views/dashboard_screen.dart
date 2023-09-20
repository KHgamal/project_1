import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/generated/l10n.dart';
import 'package:project_1/src/home/presentation/views/home_view.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});
  static const route = '/dashboard';

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

int stackIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: stackIndex,
        children: const[
          Placeholder(),
          Placeholder(),
          HomeView(),
        ],
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
            onTap: (index){
              setState(() {
                stackIndex = index;
              });
            },
            elevation: 0,
            currentIndex: stackIndex,
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
                    color: (stackIndex == 0)?
                    Colours.accentColour:Colors.transparent,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Icon(
                    Icons.person_2_outlined,
                    color: (stackIndex == 0)?
                    Colours.primaryColour:Colours.txtDetailedColor,
                  ),
                ),label: S.of(context).navbar_profile,),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Container(
                  width: 68,
                  height: 32,
                  decoration: BoxDecoration(
                    color: (stackIndex == 1)?
                    Colours.accentColour:Colors.transparent,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Icon(
                    Icons.local_offer_outlined
                    ,color: (stackIndex == 1)?
                  Colours.primaryColour:Colours.txtDetailedColor,
                  ),
                ),label: S.of(context).navbar_offers,),

              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Container(
                    width: 68,
                    height: 32,

                    decoration: BoxDecoration(
                    color: (stackIndex == 2)?
                    Colours.accentColour:Colors.transparent,
                    borderRadius: BorderRadius.circular(28),

                  ),
                  child: Icon(
                    Icons.home,
                    color: (stackIndex == 2)?
                    Colours.primaryColour:Colours.txtDetailedColor,
                  ),
                ),label: S.of(context).navbar_main,),
            ],

          ),
        ),
      ),
    );
  }
}
