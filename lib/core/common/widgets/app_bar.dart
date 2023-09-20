import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/generated/l10n.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWidget ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              child: InkWell(
                onTap: (){},
                splashColor: Colors.transparent,
                borderRadius: BorderRadius.circular(24),
                child:const Icon(
                  Icons.notifications_none_outlined,
                  color: Colours.primaryColour,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(100);
}
