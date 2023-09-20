import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.secondaryColour,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: Colours.appBarGradient,
            ),
          ),
          toolbarHeight: 100,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 48,
                    height: 48,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/f5/c2/33/f5c233abe166b186b989293ad18ba07a.jpg'
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).title,
                        style: const TextStyle(
                          color: Colours.secondaryColour,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        S.of(context).user_name,
                        style: const TextStyle(
                          color: Colours.secondaryColour,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                    ],


                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colours.secondaryColour,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon:const Icon(
                      Icons.notifications_none_outlined,
                      color: Colours.primaryColour,
                      size: 24.0,
                    ),
                  ),
                ),
              ),



            ],
          ),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:16.0,right:16.0,top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                S.of(context).product_title,
              style: const TextStyle(
                color: Colours.txtMainColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600

              ),
            ),
            IconButton(
                onPressed: (){},
                icon:const Icon(
                    Icons.filter_list,

                ),
            ),
          ],
        ),
      ),
      
    );
  }

}
