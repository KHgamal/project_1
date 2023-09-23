import 'package:flutter/material.dart';
import 'package:project_1/core/common/widgets/app_bar_action.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/core/res/media_res.dart';
import 'package:project_1/generated/l10n.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
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
                      'https://i.pinimg.com/originals/f5/c2/33/f5c233abe166b186b989293ad18ba07a.jpg'),
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
                        fontWeight: FontWeight.w400),
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
          AppBarAction(
              child:Image.asset(Media.notificationIcon, width: 18,height: 21,),
              onTap: () {}),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
