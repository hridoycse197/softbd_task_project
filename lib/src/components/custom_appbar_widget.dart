import 'package:flutter/material.dart';

import '../config/utils/app_colors.dart';
import 'custom_text_widget.dart';
import 'space_horizontal_widget.dart';

class KappBar extends StatelessWidget implements PreferredSizeWidget {
  bool isTrailingIcon;
  bool centerTitle;
  Widget title;
  KappBar(
      {super.key,
      required this.title,
      required this.centerTitle,
      this.isTrailingIcon = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: Row(
          children: [
            SpaceHorizontalWidget(width: 30),
            const Icon(
              Icons.menu,
              color: black,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: centerTitle,
        actions: [
          isTrailingIcon
              ? GestureDetector(
                  onTap: () {},
                  child: Stack(children: [
                    Image.asset('assets/Bell.png'),
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: red,
                        radius: 5,
                        child: KText(
                          text: '1',
                          fontColor: white,
                          fontSize: 5,
                        ),
                      ),
                    )
                  ]),
                )
              : const SizedBox.shrink(),
          SpaceHorizontalWidget(width: 30)
        ],
        title: title);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
