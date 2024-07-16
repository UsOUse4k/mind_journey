import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_mind/core/router/routes.dart';
import 'package:medi_mind/gen/assets.gen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  int tapCount = 0;

  final List<String> imageUrls = [
    Assets.images.onBoarding1.path,
    Assets.images.onBoarding2.path,
    Assets.images.onBoarding3.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 29,
            right: 29,
          ),
          child: Column(
            children: [
              const Spacer(flex: 2),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Image(
                  width: 372,
                  height: 259,
                  key: ValueKey<int>(currentIndex),
                  image: AssetImage(
                    imageUrls[currentIndex],
                  ),
                ),
              ),
              const SizedBox(height: 38),
              Text(
                'Прием лекрств во время',
                style: GoogleFonts.openSans(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                'Принимайте лекарство согласно вашему плану',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 36),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(191, 191, 191, 0.44),
                ),
                child: DotsIndicator(
                  dotsCount: imageUrls.length,
                  position: currentIndex,
                  decorator: const DotsDecorator(
                    activeColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 36),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      tapCount++;
                      if (tapCount >= 3) {
                        const LoginRoute().go(context);
                      } else {
                        currentIndex = (currentIndex + 1) % imageUrls.length;
                      }
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff02036D),
                  ),
                  child: Center(
                    child: Text(
                      'Продолжить',
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  const LoginRoute().go(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffCCDCFE),
                  ),
                  child: Center(
                    child: Text(
                      'Пропустить',
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff2453BA),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
