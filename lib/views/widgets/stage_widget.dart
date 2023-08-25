import 'package:flutter/material.dart';
import 'package:geekstack_new_ui/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controllers/home_screen_controller.dart';

class StageWidget extends StatelessWidget {
  final int index;
  const StageWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final degreeProvider =
        Provider.of<HomeScreenController>(context, listen: false);
    return InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: () {
          degreeProvider.changeSelectedStage(index);
        },
        child: Consumer<HomeScreenController>(builder: (context, value, child) {
          return Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Adaptive.w(2.5), vertical: Adaptive.h(1.2)),
              height: Adaptive.h(12),
              width: Adaptive.w(21),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: degreeProvider.selectedStage == index
                          ? Colors.black
                          : borderColor),
                  borderRadius: const BorderRadius.all(Radius.circular(6))),
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: Adaptive.w(5.2),
                        backgroundColor: stageColor,
                        child: Text(
                          (index + 1).toString(),
                          style: const TextStyle(
                              fontFamily: 'Urbanist_ExtraBold', fontSize: 19),
                        ),
                      ),
                      SizedBox(height: Adaptive.h(0.5)),
                      const Text('Stage',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
              ));
        }));
  }
}
