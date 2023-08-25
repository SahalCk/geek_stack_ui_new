import 'package:flutter/material.dart';
import 'package:geekstack_new_ui/controllers/home_screen_controller.dart';
import 'package:geekstack_new_ui/utils/colors.dart';
import 'package:geekstack_new_ui/utils/sized_boxes.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PPTWidget extends StatelessWidget {
  final int index;
  final String title;
  final int pages;
  const PPTWidget(
      {super.key,
      required this.index,
      required this.title,
      required this.pages});

  @override
  Widget build(BuildContext context) {
    final degreeProvider =
        Provider.of<HomeScreenController>(context, listen: false);
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: () {
        degreeProvider.changeSelectedPPT(index);
      },
      child: Consumer<HomeScreenController>(
        builder: (context, value, child) {
          return Container(
            padding: EdgeInsets.symmetric(
                horizontal: Adaptive.w(2.5), vertical: Adaptive.h(1.2)),
            height: Adaptive.h(17),
            width: Adaptive.w(37),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: degreeProvider.selectedPPT == index
                        ? Colors.black
                        : borderColor),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/ppt.png',
                  width: Adaptive.w(10.5),
                ),
                sizedBoxHeight10,
                Text(
                  title,
                  style: TextStyle(
                      height: 0,
                      color: textColor,
                      fontSize: 15.2,
                      fontFamily: 'Urbanist_Medium',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Adaptive.h(0.7),
                ),
                Text('$pages Pages', style: TextStyle(color: subtitleColor))
              ],
            ),
          );
        },
      ),
    );
  }
}
