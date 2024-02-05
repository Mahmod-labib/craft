import 'package:craft/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/material-theme/color_schemes.g.dart';
import '../../utils/responsive/responsive.dart';
import '../widgets/custom_text_field.dart';

class SignUp extends StatelessWidget {


  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    context.pushReplacement("/login");
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new , color: lightColorScheme.shadow,size: 25,
                  ),
                ),
                const SizeHorizontal(value: 20),
                Text('SignUp' , style: TextStyle(
                    fontSize: 20,
                    color: lightColorScheme.shadow,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizeVertical(value: 3),
            CustomTextFormField(
              prefix:const Icon(Icons.person , color: Colors.blueGrey,) ,
              controller: TextEditingController(), hintText: '  Enter your name ', obscureText: false,
              textInputType: TextInputType.name,
            ),
            const SizeVertical(value: 1.5),
            CustomTextFormField(
              prefix:const Icon(Icons.email , color: Colors.blueGrey,) ,
              controller: TextEditingController(), hintText: '  Enter your email ', obscureText: false,
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
              children: [
                Checkbox(

                  autofocus: false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  value: value, onChanged: (bool? value) {  },

                ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const Text("I agree to the Handicrafts " , style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),),
                          Text("Terms of Service", style: TextStyle(
                            color: lightColorScheme.surfaceTint,
                            fontSize: 14,
                            letterSpacing: 1,

                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          const Text("and" , style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 1,

                          ),),
                          Text(" Privacy Policy", style: TextStyle(
                            color: lightColorScheme.surfaceTint,
                            fontSize: 14,
                            letterSpacing: 1,

                          ),)
                        ],
                      ),
                    ],
                  ),

              ],
            ),
            const SizeVertical(value: 2.5),
            CustomButton(text: "Sign Up", onPressed: (){
              context.pushReplacement('/verifiycode');
            }, width: double.infinity, height: 40 ,backgroundColor: lightColorScheme.primary,),
            const SizeVertical(value: 2.5),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account ?",style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),),
      const SizedBox(width: 5,),

      InkWell(
        onTap: (){
          context.pushReplacement("/login");

        },
        child: Text("Sign in", style: TextStyle(
          color: lightColorScheme.surfaceTint,
          fontSize: 14,
        ),),
      )
            ],
          )
          ],
          ),
        ),
      )
    );
  }
}

/*
                  title: Column(
                    children: [
                      Row(
                        children: [
                          const Text("I agree to the Handicrafts " , style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),),
                          Text("Terms of Service", style: TextStyle(
                            color: lightColorScheme.surfaceTint,
                            fontSize: 10,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          const Text("and" , style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),),
                          Text("Privacy Policy", style: TextStyle(
                            color: lightColorScheme.surfaceTint,
                            fontSize: 10,
                          ),)
                        ],
                      ),
                    ],
                  ),

 */