import 'package:flutter/material.dart';
import 'package:geekstack_new_ui/controllers/home_screen_controller.dart';
import 'package:geekstack_new_ui/utils/colors.dart';
import 'package:geekstack_new_ui/views/screens/screen_home.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const GeekStackUi());
}

class GeekStackUi extends StatelessWidget {
  const GeekStackUi({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HomeScreenController())
        ],
        child: MaterialApp(
          title: 'Geek Stack',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.black, background: backgroundColor),
              useMaterial3: true,
              fontFamily: 'Urbanist'),
          home: const HomeScreen(),
        ),
      );
    });
  }
}
