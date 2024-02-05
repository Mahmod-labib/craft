import 'package:craft/ui/widgets/Custom_Button.dart';
import 'package:craft/ui/widgets/button.dart';
import 'package:craft/ui/widgets/custom_outline_button.dart';
import 'package:craft/ui/widgets/custom_text_field.dart';
import 'package:craft/utils/material-theme/color_schemes.g.dart';
import 'package:craft/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
class LoginScreen  extends StatelessWidget {
  const LoginScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios_new , color: lightColorScheme.shadow,size: 25,),
                  const SizeHorizontal(value: 20),
                  Text('Login' , style: TextStyle(
                      fontSize: 20,
                      color: lightColorScheme.shadow,fontWeight: FontWeight.bold),)
                ],
              ),
            const SizeVertical(value: 3),
            CustomTextFormField(
                prefix:const Icon(Icons.email , color: Colors.blueGrey,) ,
                controller: TextEditingController(), hintText: '  Enter Your Email ', obscureText: false,
              textInputType: TextInputType.emailAddress,
            ),
          const SizeVertical(value: 1.5),

          CustomTextFormField(
                  prefix:const Icon(Icons.lock , color: Colors.blueGrey,) ,
                  suffix: const Icon(Icons.visibility , color: Colors.blueGrey,) ,
                  controller: TextEditingController(), hintText: '  Enter Your Password ', obscureText: true,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
          ),
              const SizeVertical(value: 1.5),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?" , style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    color: lightColorScheme.surfaceTint),),

              ],
            ),
              const SizeVertical(value: 1),
              CustomButton(text:'Login', width: double.infinity , height: 40 ,
                onPressed: ()=>showDialog(context: context,

                  builder: (BuildContext context)=>Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AlertDialog(

                        title: Container(
                          width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: lightColorScheme.tertiaryContainer,
                              shape: BoxShape.circle
                            ),
                            child: Image.asset("assets/images/img_icoutlinecheck.png")),
                      content: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Text("Welcome Back" , style: TextStyle(
                              fontSize: 30 , fontWeight: FontWeight.bold ,
                              color:lightColorScheme.shadow ),),
                          const SizedBox(height: 10,),

                          Text("you login successfully" , style: TextStyle(
                            fontSize: 15 , color: lightColorScheme.onSurfaceVariant,
                          ),),
                          Text("into Handicrafts app" , style: TextStyle(
                            fontSize: 15 , color: lightColorScheme.onSurfaceVariant,
                          ),),
                          const SizedBox(height: 10,),

                          CustomButton(text: ("Go to home"), onPressed: (){} , width: 180 , height:40 ,backgroundColor: lightColorScheme.primary,),
                          const SizedBox(height: 10,),

                        ],
                      ),

                      ),
                    ],
                  ),

              ) ,backgroundColor: lightColorScheme.primary,),
              const SizeVertical(value: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account ?  " , style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 14,
                      color: lightColorScheme.onSurfaceVariant),),
                  InkWell(
                    onTap: (){
                  context.pushReplacement('/signUp');
                    },
                    child: Text("SignUp",style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                        color: lightColorScheme.surfaceTint),),
                  ),
                ],
              ),
              const SizeVertical(value: 2.5),
              const Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider()
                    ),

                    Text("  OR  "),

                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),
              const SizeVertical(value: .5),

              CustomButtonOutlined(label: "Sign in with Google " , leftIcon: SvgPicture.asset('assets/images/img_google.svg'),),

              const SizeVertical(value: 0.5),

               CustomButtonOutlined(label: " Sign in with Facebook " , leftIcon: SvgPicture.asset('assets/images/img_facebook.svg'),),
              const SizeVertical(value: 0.5),

              CustomButtonOutlined(
                label:  "Sign in with Apple",
                leftIcon: SvgPicture.asset("assets/images/img_user.svg"),),
            ],
          ),
        ),
      ),
    );
  }
}
