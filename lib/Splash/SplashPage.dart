import 'package:flutter/material.dart';

import 'Splash2Route.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Splash2Route().isLogin(context);
  }

  @override
  Widget build(BuildContext context) {

    var devicePixel = MediaQuery.of(context).devicePixelRatio;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Image.network('https://i.pinimg.com/564x/50/9f/be/509fbead59a552495f2a776b58d7cbe2.jpg', height: double.infinity, fit: BoxFit.fill,),
          Image.asset("assets/images/splash_bg.jpg", height: screenHeight, width: screenWidth, fit: BoxFit.fill,),

          Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight*.32,),
                      Text("Plant", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: devicePixel*15, fontFamily: "Poppins"),),
                      Text("O", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: devicePixel*55, fontFamily: "Oxygen"),),
                      Text("Pedia", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: devicePixel*15, fontFamily: "Poppins"),),
                      SizedBox(height: screenHeight*.18,),
                      Text("A Plant detection app", style: TextStyle(color: Colors.white60, fontWeight: FontWeight.w400, fontSize: devicePixel*6, fontFamily: "Poppins"),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
