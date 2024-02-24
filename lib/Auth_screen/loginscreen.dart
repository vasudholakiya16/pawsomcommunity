import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/Auth_screen/signupscreen.dart';
import 'package:pawsomcommunity/Home_screen/home.dart';
import 'package:pawsomcommunity/consts/colors.dart';
import 'package:pawsomcommunity/consts/strings.dart';
import 'package:pawsomcommunity/consts/styles.dart';
import 'package:pawsomcommunity/controller/authcontroller.dart';
import 'package:pawsomcommunity/forgatPassScreen/emailCheack.dart';
import 'package:pawsomcommunity/same_code/customText.dart';
import 'package:pawsomcommunity/same_code/outButton.dart';
import 'package:pawsomcommunity/same_code/splesh_screen_img.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.08).heightBox,
            applogoWidget(),
            10.heightBox,
            "LOG IN".text.fontFamily('Mplus').black.size(18).make(),
            5.heightBox,
            "Enter your e-mail and password "
                .text
                .fontFamily(bold)
                .black
                .size(18)
                .make(),
            5.heightBox,
            Obx(
              () => Column(
                children: [
                  customTextField(
                    hint: emailHint,
                    title: email,
                    isPass: false,
                    controller: controller.emailController,
                  ),
                  customTextField(
                    hint: password,
                    title: password,
                    isPass: true,
                    controller: controller.passwordController,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        //
                        // print('Forget password button pressed');

                        // For example, navigate to a new screen using GetX
                        Get.to(() => const MyApp());
                      },
                      child: const Text(
                          'Forgot Password'), // Replace with your actual text
                    ),
                  ),
                  // 5.heightBox,
                  controller.isloading.value
                      ? const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(redColor),
                        )
                      : ourButton(
                          color: const Color(0xFFCA7867),
                          title: login,
                          textColor: whiteColor,
                          onpress: () async {
                            controller.isloading(true);
                            await controller
                                .loginMethod(context: context)
                                .then((value) {
                              if (value != null) {
                                VxToast.show(context, msg: loggedin);
                                Get.offAll(() => const Home());
                              } else {
                                controller.isloading(false);
                              }
                            });
                          },
                          onPress: () {},
                        ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  // createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  10.heightBox,
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: createNewAccount,
                          style: TextStyle(fontFamily: bold, color: fontGrey),
                        ),
                        TextSpan(
                          text: Signup,
                          style: TextStyle(fontFamily: bold, color: redColor),
                        ),
                      ],
                    ),
                  ).onTap(() {
                    Get.to(() => const SignupScreen());
                  }),
                  // 10.heightBox,
                ],
              )
                  .box
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .make(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xFFE8ECF4),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text("Or Login With"),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xFFE8ECF4),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // print("Container pressed!");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFE8ECF4),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/images/fb.png",
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // signWithGoogle();
                        print("Google button pressed!");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFE8ECF4),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/images/google.png",
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Add your onPressed logic here
                        print("Apple button pressed!");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFE8ECF4),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/images/apple.png",
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            loginimg()
          ],
        ),
      ),
    );
  }

  // Future<void> signWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //     final GoogleSignInAuthentication? googleAuth =
  //         await googleUser?.authentication;
  //     final OAuthCredential googleCredential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );

  //     final UserCredential userCredential =
  //         await FirebaseAuth.instance.signInWithCredential(googleCredential);
  //     print(userCredential.user?.displayName);
  //   } catch (e) {
  //     print("Error signing in with Google: $e");
  //   }
}
