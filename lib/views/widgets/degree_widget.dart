import 'package:flutter/material.dart';
import 'package:geekstack_new_ui/controllers/home_screen_controller.dart';
import 'package:geekstack_new_ui/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DegreeWidget extends StatelessWidget {
  final int index;
  final String degreeName;
  final String stages;
  const DegreeWidget(
      {super.key,
      required this.index,
      required this.degreeName,
      required this.stages});

  @override
  Widget build(BuildContext context) {
    final degreeProvider =
        Provider.of<HomeScreenController>(context, listen: false);
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: () {
        degreeProvider.changeSelectedDegree(index);
      },
      child: Consumer<HomeScreenController>(
        builder: (context, value, child) {
          return Container(
            padding: EdgeInsets.symmetric(
                horizontal: Adaptive.w(2.5), vertical: Adaptive.h(1.2)),
            height: Adaptive.h(17),
            width: Adaptive.w(31),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: degreeProvider.selectedDegreeIndex == index
                        ? Colors.black
                        : borderColor),
                borderRadius: const BorderRadius.all(Radius.circular(6))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(degreeName,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0,
                        fontSize: 14,
                        fontFamily: 'Urbanist_Black')),
                Text('$stages Stages',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Urbanlist_Medium',
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
