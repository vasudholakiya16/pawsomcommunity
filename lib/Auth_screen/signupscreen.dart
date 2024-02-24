// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:pawsomcommunity/Home_screen/home_screen.dart';
// // import 'package:pawsomcommunity/consts/colors.dart';
// // import 'package:pawsomcommunity/consts/firebase_constent.dart';
// // import 'package:pawsomcommunity/consts/strings.dart';
// // import 'package:pawsomcommunity/consts/styles.dart';
// // import 'package:pawsomcommunity/controller/authcontroller.dart';
// // import 'package:pawsomcommunity/same_code/customText.dart';
// // import 'package:pawsomcommunity/same_code/outButton.dart';
// // import 'package:pawsomcommunity/same_code/splesh_screen_img.dart';
// // import 'package:velocity_x/velocity_x.dart';

// // class SignupScreen extends StatefulWidget {
// //   const SignupScreen({super.key});

// //   @override
// //   State<SignupScreen> createState() => _SignupScreenState();
// // }

// // class _SignupScreenState extends State<SignupScreen> {
// //   bool? isCheck = false;
// //   var controller = Get.put(AuthController());

// //   // Text Controller
// //   var namecontroller = TextEditingController();
// //   var emailcontroller = TextEditingController();
// //   var passwoedcontroller = TextEditingController();
// //   var contretupePasswordroller = TextEditingController();
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       resizeToAvoidBottomInset: false,
// //       body: Center(
// //         child: Column(
// //           children: [
// //             (context.screenHeight * 0.1).heightBox,
// //             applogoWidget(),
// //             15.heightBox,
// //             "SIGN UP".text.fontFamily(bold).black.size(18).make(),
// //             15.heightBox,
// //             "Enter your credential to continue  "
// //                 .text
// //                 .fontFamily(bold)
// //                 .black
// //                 .size(18)
// //                 .make(),

// //             10.heightBox,
// //             Obx(
// //               () => Column(
// //                 children: [
// //                   customTextField(
// //                       hint: NameHint,
// //                       title: Name,
// //                       controller: namecontroller,
// //                       isPass: false),
// //                   customTextField(
// //                       hint: emailHint,
// //                       title: email,
// //                       controller: emailcontroller,
// //                       isPass: false),
// //                   customTextField(
// //                       hint: passwordHint,
// //                       title: password,
// //                       controller: passwoedcontroller,
// //                       isPass: true),
// //                   customTextField(
// //                       hint: passwordHint,
// //                       title: retypePassword,
// //                       controller: contretupePasswordroller,
// //                       isPass: true),
// //                   Align(
// //                       alignment: Alignment.centerRight,
// //                       child: TextButton(
// //                           onPressed: () {}, child: forgetPass.text.make())),

// //                   Row(
// //                     children: [
// //                       Checkbox(
// //                           activeColor: redColor,
// //                           checkColor: whiteColor,
// //                           value: isCheck,
// //                           onChanged: (newValue) {
// //                             setState(() {
// //                               isCheck = newValue;
// //                             });
// //                           }),
// //                       5.widthBox,
// //                       Expanded(
// //                         child: RichText(
// //                             text: const TextSpan(
// //                           children: [
// //                             TextSpan(
// //                                 text: "I aggre to to the",
// //                                 style: TextStyle(
// //                                   fontFamily: regular,
// //                                   color: fontGrey,
// //                                 )),
// //                             TextSpan(
// //                                 text: termAndCond,
// //                                 style: TextStyle(
// //                                   fontFamily: regular,
// //                                   color: redColor,
// //                                 )),
// //                             TextSpan(
// //                                 text: "&",
// //                                 style: TextStyle(
// //                                   fontFamily: regular,
// //                                   color: fontGrey,
// //                                 )),
// //                             TextSpan(
// //                                 text: privacyPolicy,
// //                                 style: TextStyle(
// //                                   fontFamily: regular,
// //                                   color: redColor,
// //                                 )),
// //                           ],
// //                         )),
// //                       )
// //                     ],
// //                   ),
// //                   5.heightBox,
// //                   // ourButton().box.width(context.screenWidth - 50).make(),
// //                   controller.isloading.value
// //                       ? const CircularProgressIndicator(
// //                           valueColor: AlwaysStoppedAnimation(redColor),
// //                         )
// //                       : ourButton(
// //                               color: isCheck == true ? redColor : lightGrey,
// //                               title: Signup,
// //                               textColor: whiteColor,
// //                               onpress: () async {
// //                                 if (isCheck != false) {
// //                                   controller.isloading(true);
// //                                   try {
// //                                     await controller.SignupMethod(
// //                                             context: context,
// //                                             email: emailcontroller.text,
// //                                             password: passwoedcontroller.text)
// //                                         .then((value) {
// //                                       return controller.storeUserData(
// //                                           email: emailcontroller.text,
// //                                           password: passwoedcontroller.text,
// //                                           Name: namecontroller.text);
// //                                     }).then((value) {
// //                                       VxToast.show(context, msg: loggedin);
// //                                       Get.offAll(() => const HomeScreen());
// //                                     });
// //                                   } catch (e) {
// //                                     auth.signOut();
// //                                     VxToast.show(context, msg: e.toString());
// //                                     controller.isloading(false);
// //                                   }
// //                                 }
// //                               },
// //                               onPress: () {})
// //                           .box
// //                           .width(context.screenWidth - 50)
// //                           .make(),
// //                   10.heightBox,
// //                 ],
// //               )
// //                   .box
// //                   .padding(const EdgeInsets.all(16))
// //                   .width(context.screenWidth - 70)
// //                   .make(),
// //             ),
// //             10.heightBox,

// //             // wrapping into gested detector widgets
// //             RichText(
// //               text: const TextSpan(
// //                 children: [
// //                   TextSpan(
// //                     text: alreadyHaveAccount,
// //                     style: TextStyle(fontFamily: bold, color: fontGrey),
// //                   ),
// //                   TextSpan(
// //                     text: login,
// //                     style: TextStyle(fontFamily: bold, color: redColor),
// //                   )
// //                 ],
// //               ),
// //             ).onTap(() {
// //               Get.back();
// //             })
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pawsomcommunity/Home_screen/home_screen.dart';
// import 'package:pawsomcommunity/consts/colors.dart';
// import 'package:pawsomcommunity/consts/firebase_constent.dart';
// import 'package:pawsomcommunity/consts/strings.dart';
// import 'package:pawsomcommunity/consts/styles.dart';
// import 'package:pawsomcommunity/controller/authcontroller.dart';
// import 'package:pawsomcommunity/same_code/customText.dart';
// import 'package:pawsomcommunity/same_code/outButton.dart';
// import 'package:pawsomcommunity/same_code/splesh_screen_img.dart';
// import 'package:velocity_x/velocity_x.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   bool? isCheck = false;
//   var controller = Get.put(AuthController());

//   // Text Controller
//   var nameController = TextEditingController();
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var confirmPasswordController = TextEditingController();

//   // Email validation regex
//   final RegExp emailRegex = RegExp(
//     r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
//   );

//   // Password validation regex
//   final RegExp passwordRegex = RegExp(
//     r'^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d@$!%*?&]{8,}$',
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Center(
//         child: Column(
//           children: [
//             (context.screenHeight * 0.1).heightBox,
//             applogoWidget(),
//             15.heightBox,
//             "SIGN UP".text.fontFamily(bold).black.size(18).make(),
//             15.heightBox,
//             "Enter your credentials to continue"
//                 .text
//                 .fontFamily(bold)
//                 .black
//                 .size(18)
//                 .make(),
//             10.heightBox,
//             Obx(
//               () => Column(
//                 children: [
//                   customTextField(
//                     hint: NameHint,
//                     title: Name,
//                     controller: nameController,
//                     isPass: false,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Name is required';
//                       }
//                       return null;
//                     },
//                   ),
//                   customTextField(
//                     hint: emailHint,
//                     title: email,
//                     controller: emailController,
//                     isPass: false,
//                     validator: (value) {
//                       if (!emailRegex.hasMatch(value!)) {
//                         return 'Enter a valid email address';
//                       }
//                       return null;
//                     },
//                   ),
//                   customTextField(
//                     hint: passwordHint,
//                     title: password,
//                     controller: passwordController,
//                     isPass: true,
//                     validator: (value) {
//                       if (!passwordRegex.hasMatch(value!)) {
//                         return 'Password must be 8 characters long with at least one capital letter and one special symbol.';
//                       }
//                       return null;
//                     },
//                   ),
//                   customTextField(
//                     hint: passwordHint,
//                     title: retypePassword,
//                     controller: confirmPasswordController,
//                     isPass: true,
//                     validator: (value) {
//                       if (value != passwordController.text) {
//                         return 'Passwords do not match';
//                       }
//                       return null;
//                     },
//                   ),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: TextButton(
//                       onPressed: () {},
//                       child: forgetPass.text.make(),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Checkbox(
//                         activeColor: redColor,
//                         checkColor: whiteColor,
//                         value: isCheck,
//                         onChanged: (newValue) {
//                           setState(() {
//                             isCheck = newValue;
//                           });
//                         },
//                       ),
//                       5.widthBox,
//                       Expanded(
//                         child: RichText(
//                           text: const TextSpan(
//                             children: [
//                               TextSpan(
//                                 text: "I agree to the",
//                                 style: TextStyle(
//                                   fontFamily: regular,
//                                   color: fontGrey,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: termAndCond,
//                                 style: TextStyle(
//                                   fontFamily: regular,
//                                   color: redColor,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: "&",
//                                 style: TextStyle(
//                                   fontFamily: regular,
//                                   color: fontGrey,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: privacyPolicy,
//                                 style: TextStyle(
//                                   fontFamily: regular,
//                                   color: redColor,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   5.heightBox,
//                   controller.isloading.value
//                       ? const CircularProgressIndicator(
//                           valueColor: AlwaysStoppedAnimation(redColor),
//                         )
//                       : ourButton(
//                           color: isCheck == true ? redColor : lightGrey,
//                           title: Signup,
//                           textColor: whiteColor,
//                           onpress: () async {
//                             if (isCheck != false) {
//                               if (_validateForm()) {
//                                 controller.isloading(true);
//                                 try {
//                                   await controller.SignupMethod(
//                                     context: context,
//                                     email: emailController.text,
//                                     password: passwordController.text,
//                                   ).then((value) {
//                                     return controller.storeUserData(
//                                       email: emailController.text,
//                                       password: passwordController.text,
//                                       Name: nameController.text,
//                                     );
//                                   }).then((value) {
//                                     VxToast.show(context, msg: loggedin);
//                                     Get.offAll(() => const HomeScreen());
//                                   });
//                                 } catch (e) {
//                                   auth.signOut();
//                                   VxToast.show(context, msg: e.toString());
//                                   controller.isloading(false);
//                                 }
//                               }
//                             }
//                           },
//                           onPress: () {},
//                         ).box.width(context.screenWidth - 50).make(),
//                   10.heightBox,
//                 ],
//               )
//                   .box
//                   .padding(const EdgeInsets.all(16))
//                   .width(context.screenWidth - 70)
//                   .make(),
//             ),
//             10.heightBox,
//             RichText(
//               text: const TextSpan(
//                 children: [
//                   TextSpan(
//                     text: alreadyHaveAccount,
//                     style: TextStyle(fontFamily: bold, color: fontGrey),
//                   ),
//                   TextSpan(
//                     text: login,
//                     style: TextStyle(fontFamily: bold, color: redColor),
//                   ),
//                 ],
//               ),
//             ).onTap(() {
//               Get.back();
//             })
//           ],
//         ),
//       ),
//     );
//   }

//   bool _validateForm() {
//     return _validateField(nameController) &&
//         _validateField(emailController) &&
//         _validateField(passwordController) &&
//         _validateField(confirmPasswordController);
//   }

//   bool _validateField(TextEditingController controller) {
//     return controller.text.isNotEmpty;
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/Home_screen/home_screen.dart';
import 'package:pawsomcommunity/consts/colors.dart';
import 'package:pawsomcommunity/consts/firebase_constent.dart';
import 'package:pawsomcommunity/consts/strings.dart';
import 'package:pawsomcommunity/consts/styles.dart';
import 'package:pawsomcommunity/controller/authcontroller.dart';
import 'package:pawsomcommunity/same_code/customText.dart';
import 'package:pawsomcommunity/same_code/outButton.dart';
import 'package:pawsomcommunity/same_code/splesh_screen_img.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  // Text Controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  // Email validation regex
  final RegExp emailRegex = RegExp(
    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
  );

  // Password validation regex
  final RegExp passwordRegex = RegExp(
    r'^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d@$!%*?&]{8,}$',
  );

  bool _validateForm() {
    return _validateField(nameController) &&
        _validateField(emailController) &&
        _validateField(passwordController) &&
        _validateField(confirmPasswordController);
  }

  bool _validateField(TextEditingController controller) {
    return controller.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            15.heightBox,
            "SIGN UP".text.fontFamily(bold).black.size(18).make(),
            15.heightBox,
            "Enter your credentials to continue"
                .text
                .fontFamily(bold)
                .black
                .size(18)
                .make(),
            10.heightBox,
            Obx(
              () => Column(
                children: [
                  customTextField(
                    hint: NameHint,
                    title: Name,
                    controller: nameController,
                    isPass: false,
                  ),
                  customTextField(
                    hint: emailHint,
                    title: email,
                    controller: emailController,
                    isPass: false,
                  ),
                  customTextField(
                    hint: passwordHint,
                    title: password,
                    controller: passwordController,
                    isPass: true,
                  ),
                  customTextField(
                    hint: passwordHint,
                    title: ConfirmPassword,
                    controller: confirmPasswordController,
                    isPass: true,
                  ),
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: TextButton(
                  //     onPressed: () {},
                  //     child: forgetPass.text.make(),
                  //   ),
                  // ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: const Color(0xFFF48B76),
                        checkColor: whiteColor,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                      ),
                      5.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                ),
                              ),
                              TextSpan(
                                text: "&",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  5.heightBox,
                  controller.isloading.value
                      ? const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(redColor),
                        )
                      : ourButton(
                          color: isCheck == true
                              ? const Color(0xFFF48B76)
                              : lightGrey,
                          title: Signup,
                          textColor: whiteColor,
                          onpress: () async {
                            if (isCheck != false) {
                              if (_validateForm()) {
                                controller.isloading(true);
                                try {
                                  await controller.SignupMethod(
                                    context: context,
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ).then((value) {
                                    return controller.storeUserData(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      Name: nameController.text,
                                    );
                                  }).then((value) {
                                    VxToast.show(context, msg: loggedin);
                                    Get.offAll(() => const HomeScreen());
                                  });
                                } catch (e) {
                                  auth.signOut();
                                  VxToast.show(context, msg: e.toString());
                                  controller.isloading(false);
                                }
                              } else {
                                // Display an error message if form validation fails
                                VxToast.show(context,
                                    msg: 'Please fill in all fields');
                              }
                            }
                          },
                          onPress: () {},
                        ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                ],
              )
                  .box
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .make(),
            ),
            10.heightBox,
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(fontFamily: bold, color: fontGrey),
                  ),
                  TextSpan(
                    text: login,
                    style: TextStyle(fontFamily: bold, color: redColor),
                  ),
                ],
              ),
            ).onTap(() {
              Get.back();
            })
          ],
        ),
      ),
    );
  }
}
