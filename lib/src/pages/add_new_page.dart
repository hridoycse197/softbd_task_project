import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/components/custom_text_widget.dart';
import 'package:softbd_task_project/src/components/space_horizontal_widget.dart';
import 'package:softbd_task_project/src/components/space_vertical_widget.dart';
import 'package:softbd_task_project/src/config/utils/helper.dart';

import '../components/add_new_page_container_widget.dart';
import '../components/custom_button_widget.dart';
import '../config/utils/app_colors.dart';

class AddNewPage extends StatelessWidget {
  const AddNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: KText(
          text: 'নতুন যোগ করুন',
          fontWeight: FontWeight.w700,
          fontSize: mediaQueryWidth(16),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceVerticalWidget(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(
                  text: 'অনুচ্ছেদ',
                  fontWeight: FontWeight.w700,
                  fontSize: mediaQueryWidth(16),
                ),
                KText(
                  text: '৪৫ শব্দ',
                  fontWeight: FontWeight.w400,
                  fontSize: mediaQueryWidth(14),
                  fontColor: textColorgrey,
                ),
              ],
            ),
            SpaceVerticalWidget(height: 10),
            AddNewPageContainerWidget(
              child: Align(
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'অনুচ্ছেদ লিখুন', border: InputBorder.none),
                ),
              ),
            ),
            SpaceVerticalWidget(height: 15),
            KText(
              text: 'অনুচ্ছেদের বিভাগ',
              fontWeight: FontWeight.w700,
              fontSize: mediaQueryWidth(16),
            ),
            SpaceVerticalWidget(height: 10),
            AddNewPageContainerWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                    underline: const SizedBox.shrink(),
                    icon: const SizedBox.shrink(),
                    value: 'অনুচ্ছেদের বিভাগ নির্বাচন করুন',
                    style: const TextStyle(
                        color: fontColorsecondary, fontWeight: FontWeight.w400),
                    items: [
                      DropdownMenuItem(
                          value: 'অনুচ্ছেদের বিভাগ নির্বাচন করুন',
                          child: KText(text: 'অনুচ্ছেদের বিভাগ নির্বাচন করুন')),
                      DropdownMenuItem(
                          value: 'text', child: KText(text: 'text')),
                      DropdownMenuItem(value: 'dd', child: KText(text: 'dd'))
                    ],
                    onChanged: (value) {},
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                  )
                ],
              ),
            ),
            SpaceVerticalWidget(height: 15),
            KText(
              text: 'তারিখ ও সময়',
              fontWeight: FontWeight.w700,
              fontSize: mediaQueryWidth(16),
            ),
            SpaceVerticalWidget(height: 10),
            AddNewPageContainerWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/calendar.png'),
                      SpaceHorizontalWidget(width: 16),
                      DropdownButton(
                        underline: const SizedBox.shrink(),
                        icon: const SizedBox.shrink(),
                        value: 'নির্বাচন করুন',
                        style: const TextStyle(
                            color: fontColorsecondary,
                            fontWeight: FontWeight.w400),
                        items: [
                          DropdownMenuItem(
                              value: 'নির্বাচন করুন',
                              child: KText(text: 'নির্বাচন করুন')),
                          DropdownMenuItem(
                              value: 'text', child: KText(text: 'text')),
                          DropdownMenuItem(
                              value: 'dd', child: KText(text: 'dd'))
                        ],
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                  )
                ],
              ),
            ),
            SpaceVerticalWidget(height: 15),
            KText(
              text: 'স্থান',
              fontWeight: FontWeight.w700,
              fontSize: mediaQueryWidth(16),
            ),
            SpaceVerticalWidget(height: 10),
            AddNewPageContainerWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    const Icon(Icons.location_on_outlined),
                    SpaceHorizontalWidget(width: 16),
                    DropdownButton(
                      underline: const SizedBox.shrink(),
                      icon: const SizedBox.shrink(),
                      value: 'নির্বাচন করুন',
                      style: const TextStyle(
                          color: fontColorsecondary,
                          fontWeight: FontWeight.w400),
                      items: [
                        DropdownMenuItem(
                            value: 'নির্বাচন করুন',
                            child: KText(text: 'নির্বাচন করুন')),
                        DropdownMenuItem(
                            value: 'text', child: KText(text: 'text')),
                        DropdownMenuItem(value: 'dd', child: KText(text: 'dd'))
                      ],
                      onChanged: (value) {},
                    ),
                  ]),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                  )
                ],
              ),
            ),
            SpaceVerticalWidget(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(
                  text: 'অনুচ্ছেদের বিবরণ',
                  fontWeight: FontWeight.w700,
                  fontSize: mediaQueryWidth(16),
                ),
                KText(
                  text: '১২০ শব্দ',
                  fontWeight: FontWeight.w400,
                  fontSize: mediaQueryWidth(14),
                  fontColor: textColorgrey,
                ),
              ],
            ),
            SpaceVerticalWidget(height: 10),
            Expanded(
              child: AddNewPageContainerWidget(
                child: Align(
                  alignment: Alignment.center,
                  child: TextFormField(
                    minLines: 20,
                    maxLines: 30,
                    decoration: const InputDecoration(
                        hintText: 'কার্যক্রমের বিবরণ লিখুন',
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            SpaceVerticalWidget(height: 15),
            CustomButton(
              height: 46,
              width: Get.width,
              title: 'সংরক্ষন করুন',
              borderRadius: 5.0,
              onTap: () {},
            ),
          ],
        ),
      )),
    );
  }
}
