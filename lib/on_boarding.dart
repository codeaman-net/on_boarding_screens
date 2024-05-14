import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:on_boarding_screens/home.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 19.0),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);
    return Scaffold(
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: const Color.fromARGB(255, 22, 47, 104),
        showBackButton: true,
        back: const Text(
          "Back",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        next: const Text(
          "Next",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        done: const Text(
          "Done",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        onDone: () {},
        onSkip: () {},
        dotsDecorator: DotsDecorator(
            size: const Size.square(10),
            activeSize: const Size(20, 10),
            activeColor: Colors.white,
            color: Colors.black26,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        pages: [
          PageViewModel(
              title: "Shop Now",
              body:
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              image: Image.asset("assets/images/shopping_1.jpg"),
              decoration: pageDecoration),
          PageViewModel(
              title: "All Your Needs",
              body:
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              image: Image.asset("assets/images/shopping_2.jpg"),
              decoration: pageDecoration),
          PageViewModel(
              title: "Free Delivery",
              body:
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              image: Image.asset("assets/images/shopping_3.jpg"),
              decoration: pageDecoration,
              footer: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      maximumSize: const Size.fromHeight(55),
                      backgroundColor: const Color(0xFFDB3022)),
                  child: const Text(
                    "Let's Shop",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
