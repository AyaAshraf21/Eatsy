import 'package:eatsy/core/themes/app_color.dart';
import 'package:eatsy/feature/profile/presentation/pages/signin_screen.dart';
import 'package:eatsy/feature/profile/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:square_percent_indicater/square_percent_indicater.dart';

import '../widgets/circle_background.dart';

void main() {
  runApp(MaterialApp(home: OnboardingScreen()));
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/pictures/fast_food.png",
      "title": "Find Your Favorite Meals",
      "description":
          "Browse through a variety of restaurants and dishes near you with just a tap!"
    },
    {
      "image": "assets/pictures/delivery.png",
      "title": "Quick & Reliable Delivery",
      "description":
          "Get your food delivered hot & fresh, straight to your doorstep."
    },
    {
      "image": "assets/pictures/discount.png",
      "title": "Enjoy Discounts & Rewards",
      "description":
          "Get exclusive offers, cashback, and loyalty rewards on every order."
    }
  ];

  void nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _controller.nextPage(
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    } else {
      Navigator.pushReplacement(context, FadeRoute(page: SignInScreen()));
    }
  }

  double getImageHeight(int index, BuildContext context) {
    if (index == 0) {
      return MediaQuery.of(context).size.width * 0.7;
    } else if (index == 1) {
      return MediaQuery.of(context).size.width * 0.55;
    } else if (index == 2) {
      return MediaQuery.of(context).size.width * 0.78;
    }
    return 220;
  }

  @override
  Widget build(BuildContext context) {
    double progress = (_currentPage + 1) / onboardingData.length;

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: onboardingData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 40, left: 7, right: 7),
                child: Stack(
                  children: [
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.11,
                        left: 20,
                        child: CircleBackground(
                          width: 35,
                          height: 35,
                          gradientColor: gradientColor,
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.06,
                        right: -25,
                        child: CircleBackground(
                            width: 57,
                            height: 75,
                            gradientColor: gradientColor)),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.53,
                      left: -25,
                      child: CircleBackground(
                          width: 57, height: 57, gradientColor: gradientColor),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.48,
                      right: 20,
                      child: CircleBackground(
                          width: 35, height: 35, gradientColor: gradientColor),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height *
                            0.09, // Adjust the spacing of the text below the image
                        left: 0,
                        right: 0,
                        child: CircleBackground(
                          image: Image.asset(onboardingData[index]["image"]!,
                              height: getImageHeight(index, context)),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          gradientColor: gradientColor,
                        )),
                    SizedBox(height: 50),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.6,
                      left: 20,
                      right: 20,
                      child: Column(
                        children: [
                          Text(
                            onboardingData[index]["title"]!,
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            onboardingData[index]["description"]!,
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SquarePercentIndicator(
                  width: 75.0,
                  height: 75.0,
                  borderRadius: 16,
                  shadowWidth: 1.5,
                  progressWidth: 3,
                  shadowColor: Colors.grey,
                  progressColor: secondaryColor,
                  progress: progress,
                  child: rectangleIcon(
                    IconButton(
                      onPressed: nextPage,
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                      iconSize: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget rectangleIcon(Widget widget) {
  return Padding(
    padding: const EdgeInsets.all(4),
    child: Container(
      decoration: BoxDecoration(
        gradient: gradientColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: widget,
      ),
    ),
  );
}
