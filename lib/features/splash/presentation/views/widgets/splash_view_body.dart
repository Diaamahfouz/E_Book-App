import 'package:e_book/constants/constants.dart';
import 'package:e_book/features/home/presentation/views/home_view.dart';
import 'package:e_book/features/splash/presentation/views/widgets/sliding_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  
  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation ;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

   @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return 
        SlidingImage(slidingAnimation: slidingAnimation);
  }
  
  void initSlidingAnimation() {
     animationController =AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero)
      .animate(animationController);
    animationController.forward();
  }
  
  void navigateToHome() {
    
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=>const HomeView(),
      transition: Transition.fadeIn,
      duration: kTransitionDuration,
    );
    });
  }
}
