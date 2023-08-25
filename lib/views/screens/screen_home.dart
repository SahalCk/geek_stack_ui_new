import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekstack_new_ui/controllers/home_screen_controller.dart';
import 'package:geekstack_new_ui/models/bottom_navigation_bar_model.dart';
import 'package:geekstack_new_ui/models/ppt_model.dart';
import 'package:geekstack_new_ui/utils/colors.dart';
import 'package:geekstack_new_ui/utils/sized_boxes.dart';
import 'package:geekstack_new_ui/views/widgets/degree_widget.dart';
import 'package:geekstack_new_ui/views/widgets/note_widget.dart';
import 'package:geekstack_new_ui/views/widgets/ppt_widget.dart';
import 'package:geekstack_new_ui/views/widgets/stage_widget.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> degrees = [
      'Design Process',
      'Themes',
      'Typology',
      'Architecture'
    ];
    List<int> stages = [7, 18, 18, 20];
    List<PPTModel> ppts = [
      PPTModel(title: 'Introduction To Architecture', pages: 7),
      PPTModel(title: 'Fundamentals Of Architecture', pages: 12),
      PPTModel(title: 'Building Narratives', pages: 10),
      PPTModel(title: 'Ultimate AWS Certificate', pages: 9)
    ];
    List<String> videos = [
      'assets/architecture_1.jpg',
      'assets/architecture_2.jpg',
      'assets/architecture_3.jpg',
      'assets/architecture_4.jpeg',
      'assets/architecture_5.jpg'
    ];

    List<String> notes = [
      'Introduction To Architecture',
      'Fundamentals Of Building',
      'Building Narratives',
      'Ultimate AWS Certificate'
    ];

    List<BottomNavigationBarItemModel> bottomNavigationBarItems = [
      BottomNavigationBarItemModel(
          unSelectedImage: 'assets/home.png',
          selectedImage: 'assets/home_selected.png'),
      BottomNavigationBarItemModel(
          unSelectedImage: 'assets/favorite.png',
          selectedImage: 'assets/favorite_selected.png'),
      BottomNavigationBarItemModel(
          unSelectedImage: 'assets/streaming.png',
          selectedImage: 'assets/streaming_selected.png'),
      BottomNavigationBarItemModel(
          unSelectedImage: 'assets/profile.png',
          selectedImage: 'assets/profile_selected.png')
    ];
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: Adaptive.h(37),
                    width: Adaptive.w(100),
                    child: Image.asset(
                      'assets/yellow_background.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Adaptive.w(6.5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizedBoxHeight50,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Welcome Back',
                                            style: TextStyle(
                                                color: textColor,
                                                letterSpacing: 0.5,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(width: Adaptive.w(1)),
                                        Image.asset(
                                          'assets/helloo.png',
                                          width: Adaptive.w(6),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Vinith Babu',
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 19,
                                          letterSpacing: 0.5,
                                          fontFamily: 'Urbanist_SemiBold',
                                          fontWeight: FontWeight.w900),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {},
                                  child: Image.asset('assets/notification.png',
                                      width: Adaptive.w(6)),
                                ),
                                SizedBox(width: Adaptive.w(6)),
                                InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {},
                                    child: Image.asset('assets/search.png',
                                        width: Adaptive.w(6)))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: Adaptive.h(0),
                    child: Container(
                      width: Adaptive.w(100),
                      height: Adaptive.h(10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(35))),
                    ),
                  ),
                  Positioned(
                      left: Adaptive.w(6.5),
                      right: Adaptive.w(6.5),
                      bottom: Adaptive.h(0),
                      child: Container(
                        padding: EdgeInsets.only(left: Adaptive.w(5)),
                        width: Adaptive.w(100),
                        height: Adaptive.h(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Color of the shadow
                                spreadRadius: 0, // Spread radius of the shadow
                                blurRadius: 1, // Blur radius of the shadow
                                offset:
                                    const Offset(0, 1), // Offset of the shadow
                              ),
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Online Architecture',
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 20,
                                  letterSpacing: 0,
                                  fontFamily: 'Urbanist_ExtraBold'),
                            ),
                            Text(
                              'Learning Journeys',
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold),
                            ),
                            sizedBoxHeight20,
                            SizedBox(
                              height: Adaptive.h(3.1),
                              width: Adaptive.w(26),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      backgroundColor: Colors.black),
                                  child: const Text('View All',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 14))),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      top: Adaptive.h(15),
                      left: Adaptive.w(48.5),
                      child: Image.asset(
                        'assets/girl_writing.png',
                        width: Adaptive.w(40),
                      ))
                ],
              ),
              sizedBoxHeight20,
              sizedBoxHeight15,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Adaptive.w(6.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Earn Your Degree',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 19,
                            fontFamily: 'Urbanist_SemiBold',
                            fontWeight: FontWeight.w900)),
                    Text('VIEW ALL',
                        style: TextStyle(
                            color: subtitleColor,
                            fontSize: 15,
                            fontFamily: 'Urbanist_SemiBold')),
                  ],
                ),
              ),
              sizedBoxHeight20,
              SizedBox(
                height: Adaptive.h(17),
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: Adaptive.w(6.5)),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DegreeWidget(
                          index: index,
                          degreeName: degrees[index],
                          stages: stages[index].toString());
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: Adaptive.w(4));
                    },
                    itemCount: degrees.length),
              ),
              sizedBoxHeight30,
              Consumer<HomeScreenController>(
                builder: (context, value, child) {
                  return Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Adaptive.w(6.5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(degrees[value.selectedDegreeIndex],
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 19,
                                    fontFamily: 'Urbanist_SemiBold',
                                    fontWeight: FontWeight.w900)),
                            Text('VIEW ALL',
                                style: TextStyle(
                                    color: subtitleColor,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist_SemiBold')),
                          ],
                        ),
                      ),
                      sizedBoxHeight20,
                      SizedBox(
                          height: Adaptive.h(12),
                          child: ListView.separated(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Adaptive.w(6.5)),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return StageWidget(index: index);
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: Adaptive.w(2.5),
                                );
                              },
                              itemCount: stages[value.selectedDegreeIndex]))
                    ],
                  );
                },
              ),
              sizedBoxHeight40,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Adaptive.w(6.5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<HomeScreenController>(
                      builder: (context, value, child) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Adaptive.w(5),
                              vertical: Adaptive.h(2)),
                          width: Adaptive.w(100),
                          height: Adaptive.h(50),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Color of the shadow
                                  spreadRadius:
                                      0, // Spread radius of the shadow
                                  blurRadius: 1, // Blur radius of the shadow
                                  offset: const Offset(
                                      0, 1), // Offset of the shadow
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'PPT ',
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 18,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Urbanist_SemiBold'),
                                      ),
                                      Text(
                                        '(Stage ${value.selectedStage + 1})',
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 16,
                                            letterSpacing: 0.5,
                                            fontFamily: 'Urbanist_Medium'),
                                      ),
                                    ],
                                  ),
                                  Text('VIEW ALL',
                                      style: TextStyle(
                                          color: subtitleColor,
                                          fontSize: 15,
                                          fontFamily: 'Urbanist_SemiBold')),
                                ],
                              ),
                              SizedBox(
                                width: Adaptive.w(100),
                                height: Adaptive.h(42),
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: Adaptive.w(3.8),
                                          mainAxisSpacing: Adaptive.h(1.8),
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return PPTWidget(
                                        index: index,
                                        title: ppts[index].title,
                                        pages: ppts[index].pages);
                                  },
                                  itemCount: 4,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    sizedBoxHeight40,
                    Consumer<HomeScreenController>(
                      builder: (context, value, child) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Adaptive.w(5),
                              vertical: Adaptive.h(2)),
                          width: Adaptive.w(100),
                          height: Adaptive.h(58),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Color of the shadow
                                  spreadRadius:
                                      0, // Spread radius of the shadow
                                  blurRadius: 1, // Blur radius of the shadow
                                  offset: const Offset(
                                      0, 1), // Offset of the shadow
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Videos ',
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 18,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Urbanist_SemiBold'),
                                      ),
                                      Text('(Stage ${value.selectedStage + 1})',
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 16,
                                              letterSpacing: 0.5,
                                              fontFamily: 'Urbanist_Medium')),
                                    ],
                                  ),
                                  Text('VIEW ALL',
                                      style: TextStyle(
                                          color: subtitleColor,
                                          fontSize: 15,
                                          fontFamily: 'Urbanist_SemiBold')),
                                ],
                              ),
                              sizedBoxHeight20,
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(2),
                                      child: Consumer<HomeScreenController>(
                                        builder: (context, value, child) {
                                          return SizedBox(
                                            width: Adaptive.w(100),
                                            height: Adaptive.h(20.5),
                                            child: Image.asset(
                                                videos[value.selectedVideo],
                                                fit: BoxFit.fill),
                                          );
                                        },
                                      )),
                                  Align(
                                    child: Image.asset('assets/play.png',
                                        width: Adaptive.w(15)),
                                  )
                                ],
                              ),
                              sizedBoxHeight15,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('2. Fundamentals of Buildings',
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 16.8,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Urbanist_Medium')),
                                  Row(
                                    children: [
                                      Image.asset('assets/time.png',
                                          width: Adaptive.w(4)),
                                      Text(' 45 mins',
                                          style: TextStyle(
                                              color: subtitleColor,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Adaptive.h(0.5),
                              ),
                              Text(
                                  'The element of Architecture play a crutial role in the design and functionality of buildings and other structures.They can affect the way in which a structure is percieved,experienced and used.',
                                  style: TextStyle(
                                      fontFamily: 'Urbanlist_Medium',
                                      color: textColor,
                                      fontSize: 15)),
                              sizedBoxHeight30,
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios,
                                      color: subtitleColor),
                                  SizedBox(
                                    height: Adaptive.h(7.5),
                                    width: Adaptive.w(64),
                                    child: Consumer<HomeScreenController>(
                                        builder: (context, value, child) {
                                      return ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                Provider.of<HomeScreenController>(
                                                        context,
                                                        listen: false)
                                                    .changeSelectedVideo(index);
                                              },
                                              child: SizedBox(
                                                width: Adaptive.w(
                                                    value.selectedVideo == index
                                                        ? 18
                                                        : 15),
                                                height: Adaptive.h(
                                                    value.selectedVideo == index
                                                        ? 7.5
                                                        : 7.2),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.asset(
                                                      videos[index],
                                                      fit: BoxFit.fill),
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                width: Adaptive.w(0.8));
                                          },
                                          itemCount: videos.length);
                                    }),
                                  ),
                                  Icon(Icons.arrow_forward_ios_rounded,
                                      color: subtitleColor)
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    sizedBoxHeight40,
                    Consumer<HomeScreenController>(
                      builder: (context, value, child) {
                        return Container(
                          padding: EdgeInsets.only(
                              left: Adaptive.w(5),
                              right: Adaptive.w(5),
                              top: Adaptive.h(2)),
                          width: Adaptive.w(100),
                          height: Adaptive.h(49),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Color of the shadow
                                  spreadRadius:
                                      0, // Spread radius of the shadow
                                  blurRadius: 1, // Blur radius of the shadow
                                  offset: const Offset(
                                      0, 1), // Offset of the shadow
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Notes ',
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 18,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Urbanist_SemiBold'),
                                      ),
                                      Text('(Stage ${value.selectedStage + 1})',
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 16,
                                              letterSpacing: 0.5,
                                              fontFamily: 'Urbanist_Medium')),
                                    ],
                                  ),
                                  Text('VIEW ALL',
                                      style: TextStyle(
                                          color: subtitleColor,
                                          fontSize: 15,
                                          fontFamily: 'Urbanist_SemiBold')),
                                ],
                              ),
                              sizedBoxHeight30,
                              SizedBox(
                                height: Adaptive.h(40),
                                child: ListView.separated(
                                    padding: const EdgeInsets.all(0),
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return NoteWidget(
                                          index: index, title: notes[index]);
                                    },
                                    separatorBuilder: (context, index) {
                                      return sizedBoxHeight15;
                                    },
                                    itemCount: notes.length),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            sizedBoxHeight60,
                            Container(
                              padding: EdgeInsets.only(left: Adaptive.w(5)),
                              width: Adaptive.w(100),
                              height: Adaptive.h(20),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(255, 176, 203, 232),
                                    Color.fromARGB(255, 186, 172, 218)
                                  ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(
                                          0.5), // Color of the shadow
                                      spreadRadius:
                                          0, // Spread radius of the shadow
                                      blurRadius:
                                          1, // Blur radius of the shadow
                                      offset: const Offset(
                                          0, 1), // Offset of the shadow
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Design, Visualize, Create',
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 14,
                                        letterSpacing: 0.5,
                                        fontFamily: 'Urbanist_Medium'),
                                  ),
                                  Text(
                                    'All in One Architectural App',
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Urbanlist_Medium'),
                                  ),
                                  sizedBoxHeight20,
                                  SizedBox(
                                    height: Adaptive.h(3.1),
                                    width: Adaptive.w(26),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13)),
                                            backgroundColor: Colors.white),
                                        child: const Text('View All',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 14))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: Adaptive.h(0),
                          right: Adaptive.w(4),
                          child: Image.asset(
                            'assets/engineer.png',
                            width: Adaptive.w(38),
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight20,
                    sizedBoxHeight15,
                    Text('Subscription Plan',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 19,
                            fontFamily: 'Urbanist_SemiBold',
                            fontWeight: FontWeight.w900)),
                    sizedBoxHeight10,
                    Text(
                        'The subscription plan is designed for individuals who are commited to advancing their skills and knowledge in Architecture, With this plan you will gain access to an extensive library of courses that covers everything from professional development to personal interestes.',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontFamily: 'Urbanlist_Medium')),
                    sizedBoxHeight20,
                    SizedBox(
                      width: Adaptive.w(100),
                      height: Adaptive.h(5.5),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 205, 2)),
                          child: Text('Enroll Now',
                              style: TextStyle(
                                  color: textColor,
                                  fontFamily: 'Urbanlist_Medium',
                                  fontWeight: FontWeight.bold))),
                    ),
                    sizedBoxHeight20
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: Adaptive.w(100),
          height: Adaptive.h(6.7),
          color: Colors.white,
          child: Consumer<HomeScreenController>(
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Provider.of<HomeScreenController>(context, listen: false)
                          .changeSelectedBottomNavigationBarItem(0);
                    },
                    child: SizedBox(
                      width: Adaptive.w(7),
                      child: Image.asset(
                          value.selectedBottomNavigationBarItem == 0
                              ? bottomNavigationBarItems[0].selectedImage
                              : bottomNavigationBarItems[0].unSelectedImage),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<HomeScreenController>(context, listen: false)
                          .changeSelectedBottomNavigationBarItem(1);
                    },
                    child: SizedBox(
                      width: Adaptive.w(7),
                      child: Image.asset(
                          value.selectedBottomNavigationBarItem == 1
                              ? bottomNavigationBarItems[1].selectedImage
                              : bottomNavigationBarItems[1].unSelectedImage),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<HomeScreenController>(context, listen: false)
                          .changeSelectedBottomNavigationBarItem(2);
                    },
                    child: SizedBox(
                      width: Adaptive.w(7),
                      child: Image.asset(
                          value.selectedBottomNavigationBarItem == 2
                              ? bottomNavigationBarItems[2].selectedImage
                              : bottomNavigationBarItems[2].unSelectedImage),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<HomeScreenController>(context, listen: false)
                          .changeSelectedBottomNavigationBarItem(3);
                    },
                    child: SizedBox(
                      width: Adaptive.w(7),
                      child: Image.asset(
                          value.selectedBottomNavigationBarItem == 3
                              ? bottomNavigationBarItems[3].selectedImage
                              : bottomNavigationBarItems[3].unSelectedImage),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
