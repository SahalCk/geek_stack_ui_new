import 'package:flutter/material.dart';
import 'package:geekstack_new_ui/controllers/home_screen_controller.dart';
import 'package:geekstack_new_ui/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NoteWidget extends StatelessWidget {
  final int index;
  final String title;
  const NoteWidget({super.key, required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    final degreeProvider =
        Provider.of<HomeScreenController>(context, listen: false);
    return InkWell(
        borderRadius: BorderRadius.circular(11),
        onTap: () {
          degreeProvider.changeSelectedNote(index);
        },
        child: Consumer<HomeScreenController>(builder: (context, value, child) {
          return Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Adaptive.w(2.5), vertical: Adaptive.h(1.2)),
              height: Adaptive.h(7.6),
              width: Adaptive.w(100),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: degreeProvider.selectedNote == index
                          ? Colors.black
                          : borderColor),
                  borderRadius: const BorderRadius.all(Radius.circular(11))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(Adaptive.w(2.3)),
                        width: Adaptive.w(10.5),
                        height: Adaptive.h(7),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color.fromARGB(255, 255, 238, 160)),
                        child: Image.asset('assets/sheet.png'),
                      ),
                      SizedBox(width: Adaptive.w(2.8)),
                      Text('${index + 1}. $title',
                          style: TextStyle(
                              color: textColor,
                              fontFamily: 'Urbanist_SemiBold',
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0,
                              fontSize: 15.3)),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                      color: subtitleColor, size: 18)
                ],
              ));
        }));
  }
}
