import 'package:flutter/material.dart';

import '../config/utils/helper.dart';
import 'custom_text_widget.dart';
import 'space_horizontal_widget.dart';

class KappBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  bool isTrailingIcon;
  KappBar({super.key, required this.title, this.isTrailingIcon = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      centerTitle: true,
      actions: [
        isTrailingIcon
            ? GestureDetector(
                onTap: () {
                },
                child: const Icon(
                  Icons.search,
                  color: Color(0xffb222455),
                ),
              )
            : const SizedBox.shrink(),
        SpaceHorizontalWidget(width: 10)
        // IconButton(
        //     onPressed: () async {
        //       Base.configController
        //           .isGridview(!Base.configController.isGridview.value);
        //       await Base.isarService.get<SettingsModel>(IsarKeys.settings);

        //       await Base.isarService.put<SettingsModel>(SettingsModel(
        //           id: IsarKeys.settings,
        //           isGridview: Base.configController.isGridview.value));
        //     },
        //     icon: Icon(
        //       !Base.configController.isGridview.value
        //           ? Icons.list
        //           : Icons.grid_view,
        //       color: AppColors.backgroundLight,
        //     )),
        // IconButton(
        //     onPressed: () async {
        //       Base.configController
        //           .isDarkMode(!Base.configController.isDarkMode.value);
        //       await Base.isarService.get<SettingsModel>(IsarKeys.settings);

        //       await Base.isarService.put<SettingsModel>(SettingsModel(
        //           id: IsarKeys.settings,
        //           isDark: Base.configController.isDarkMode.value));

        //       Get.changeThemeMode(Base.configController.isDarkMode.value
        //           ? ThemeMode.dark
        //           : ThemeMode.light);
        //     },
        //     icon: Icon(
        //       Icons.brightness_5_outlined,
        //       color: !Base.configController.isDarkMode.value
        //           ? AppColors.backgroundDark
        //           : AppColors.backgroundLight,
        //     ))
      ],
      title: KText(
        fontSize: mediaQueryWidth(17.5),
        text: title,
        fontWeight: FontWeight.w700,
        fontColor: Color(0xff222455),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
