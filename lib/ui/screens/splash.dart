import 'package:craft/ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin
{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
   Future.delayed(const Duration(seconds: 4),(){
     Navigator.of(context).pushReplacement(MaterialPageRoute(
         builder: (_)=>const HomePage() ),);
   });

  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values
    );
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.lightGreen, Colors.greenAccent] ,
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),

      ),
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/img_logo.png' , width: 150,height: 300,),
        const Text("Handicrafts" , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white, inherit: false ,fontSize: 30),),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 150,),
             Text("Community" , style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white, inherit: false ,fontSize: 30),),

          ],
        )
      ],

    ),
    );
  }
}
