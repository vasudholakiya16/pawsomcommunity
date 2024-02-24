// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:pawsomcommunity/forgatPassScreen/phone.dart';

// // class emailCheack extends StatefulWidget {
// //   const emailCheack({super.key});

// //   @override
// //   State<emailCheack> createState() => _emailCheackState();
// // }

// // class _emailCheackState extends State<emailCheack> {
// //   TextEditingController countryController = TextEditingController();
// //   String phone = "";

// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     countryController.text = "+91";
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         margin: const EdgeInsets.only(left: 25, right: 25),
// //         alignment: Alignment.topCenter,
// //         child: SingleChildScrollView(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Image.asset(
// //                 "assets/images/img2.png",
// //                 width: 300,
// //                 height: 300,
// //                 fit: BoxFit.cover,
// //               ),
// //               const SizedBox(
// //                 height: 0,
// //               ),
// //               const Text(
// //                 "Forget Password",
// //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(
// //                 height: 10,
// //               ),
// //               const Text(
// //                 "Enter the email associated with your account and we’ll send an email with instruction to reset your password ",
// //                 style: TextStyle(
// //                   fontSize: 16,
// //                 ),
// //                 textAlign: TextAlign.center,
// //               ),
// //               const SizedBox(
// //                 height: 30,
// //               ),
// //               Container(
// //                 height: 55,
// //                 decoration: BoxDecoration(
// //                     border: Border.all(width: 1, color: Colors.grey),
// //                     borderRadius: BorderRadius.circular(10)),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     const SizedBox(
// //                       width: 10,
// //                     ),
// //                     // SizedBox(
// //                     //   width: 40,
// //                     //   child: TextField(
// //                     //     controller: countryController,
// //                     //     keyboardType: TextInputType.number,
// //                     //     decoration: const InputDecoration(
// //                     //       border: InputBorder.none,
// //                     //     ),
// //                     //   ),
// //                     // ),
// //                     // const Text(
// //                     //   "|",
// //                     //   style: TextStyle(fontSize: 33, color: Colors.grey),
// //                     // ),
// //                     const SizedBox(
// //                       width: 10,
// //                     ),
// //                     Expanded(
// //                       child: TextFormField(
// //                         keyboardType: TextInputType.phone,
// //                         onChanged: (value) {
// //                           setState(() {
// //                             phone = value;
// //                           });
// //                         },
// //                         decoration: const InputDecoration(
// //                           border: InputBorder.none,
// //                           hintText: "Enter youe Email",
// //                         ),
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //               const SizedBox(
// //                 height: 20,
// //               ),
// //               SizedBox(
// //                 width: double.infinity,
// //                 height: 45,
// //                 child: ElevatedButton(
// //                     style: ElevatedButton.styleFrom(
// //                         backgroundColor: const Color(0xFFCA7867),
// //                         shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(10))),
// //                     onPressed: () async {
// //                       Get.to(() => const MyPhone());
// //                     },
// //                     child: const Text("Submitted")),
// //               )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pawsomcommunity/Home_screen/home_screen.dart';
// import 'package:pawsomcommunity/forgatPassScreen/opt.dart';

// class EmailCheck extends StatefulWidget {
//   const EmailCheck({Key? key}) : super(key: key);

//   @override
//   State<EmailCheck> createState() => _EmailCheckState();
// }

// class _EmailCheckState extends State<EmailCheck> {
//   TextEditingController emailController = TextEditingController();
//   String email = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 25),
//         alignment: Alignment.topCenter,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 "assets/images/img2.png",
//                 width: 300,
//                 height: 300,
//                 fit: BoxFit.cover,
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 "Forget Password",
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 "Enter the email associated with your account and we’ll send an email with instructions to reset your password.",
//                 style: TextStyle(fontSize: 16),
//                 textAlign: TextAlign.start,
//               ),
//               const SizedBox(height: 30),
//               TextFormField(
//                 controller: emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 onChanged: (value) {
//                   setState(() {
//                     email = value;
//                   });
//                 },
//                 decoration: const InputDecoration(
//                   hintText: "Enter your Email",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               SizedBox(
//                 width: double.infinity,
//                 height: 45,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFCA7867),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   onPressed: () async {
//                     if (_isValidEmail(email)) {
//                       try {
//                         await FirebaseAuth.instance
//                             .sendPasswordResetEmail(email: email);
//                         Get.to(() => const HomeScreen());
//                       } catch (e) {
//                         showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                             title: const Text("Error"),
//                             content: Text("An error occurred: $e"),
//                             actions: [
//                               TextButton(
//                                 onPressed: () => Navigator.pop(context),
//                                 child: const Text("OK"),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     } else {
//                       showDialog(
//                         context: context,
//                         builder: (context) => AlertDialog(
//                           title: const Text("Invalid Email"),
//                           content: const Text("Please enter a valid email."),
//                           actions: [
//                             TextButton(
//                               onPressed: () => Navigator.pop(context),
//                               child: const Text("OK"),
//                             ),
//                           ],
//                         ),
//                       );
//                     }
//                   },

//                   // onPressed: () {
//                   //   if (_isValidEmail(email)) {
//                   //     Get.to(() => const MyPhone());
//                   //   } else {
//                   //     showDialog(
//                   //       context: context,
//                   //       builder: (context) => AlertDialog(
//                   //         title: const Text("Invalid Email"),
//                   //         content: const Text("Email doesn't exist."),
//                   //         actions: [
//                   //           TextButton(
//                   //             onPressed: () => Navigator.pop(context),
//                   //             child: const Text("OK"),
//                   //           ),
//                   //         ],
//                   //       ),
//                   //     );
//                   //   }
//                   // },
//                   // onPressed: () async {
//                   //   if (_isValidEmail(email)) {
//                   //     bool emailExists = await checkEmailInDatabase(email);
//                   //     if (emailExists) {
//                   //       Get.to(() => const MyPhone());
//                   //     } else {
//                   //       showDialog(
//                   //         context: context,
//                   //         builder: (context) => AlertDialog(
//                   //           title: const Text("Invalid Email"),
//                   //           content: const Text("Email doesn't exist."),
//                   //           actions: [
//                   //             TextButton(
//                   //               onPressed: () => Navigator.pop(context),
//                   //               child: const Text("OK"),
//                   //             ),
//                   //           ],
//                   //         ),
//                   //       );
//                   //     }
//                   //   } else {
//                   //     // Show an error if the email is not valid
//                   //     showDialog(
//                   //       context: context,
//                   //       builder: (context) => AlertDialog(
//                   //         title: const Text("Invalid Email"),
//                   //         content: const Text("Please enter a valid email."),
//                   //         actions: [
//                   //           TextButton(
//                   //             onPressed: () => Navigator.pop(context),
//                   //             child: const Text("OK"),
//                   //           ),
//                   //         ],
//                   //       ),
//                   //     );
//                   //   }
//                   // },

//                   child: const Text("Submit"),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   TextButton(
//                       onPressed: () {
//                         Get.to(() => const Myotp());
//                       },
//                       child: const Text(
//                         'Try to another way?',
//                         style: TextStyle(color: Colors.black),
//                       ))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   bool _isValidEmail(String email) {
//     final emailRegex = RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");
//     return emailRegex.hasMatch(email);
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:pawsomcommunity/forgatPassScreen/otp_screen_for_email.dart';

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

import 'package:email_otp/email_otp.dart';
// class _MyAppState extends State<MyApp> {
//   TextEditingController email = TextEditingController();
//   EmailOTP myauth = EmailOTP();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Image.asset(
//               "assets/images/img2.png",
//               height: 350,
//             ),
//           ),
//           const SizedBox(
//             // borderRadius: BorderRadius.all(Radius.circular(12.0)),
//             height: 60,
//             child: Text(
//               "Enter your Email",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12.0),
//             ),
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: email,
//                   decoration: InputDecoration(
//                     prefixIcon: const Icon(
//                       Icons.mail,
//                     ),
//                     suffixIcon: IconButton(
//                         onPressed: () async {
//                           myauth.setConfig(
//                               appEmail: "contact@hdevcoder.com",
//                               appName: "Email OTP",
//                               userEmail: email.text,
//                               otpLength: 6,
//                               otpType: OTPType.digitsOnly);
//                           if (await myauth.sendOTP() == true) {
//                             ScaffoldMessenger.of(context)
//                                 .showSnackBar(const SnackBar(
//                               content: Text("OTP has been sent"),
//                             ));
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => OtpScreen(
//                                           myauth: myauth,
//                                         )));
//                           } else {
//                             ScaffoldMessenger.of(context)
//                                 .showSnackBar(const SnackBar(
//                               content: Text("Oops, OTP send failed"),
//                             ));
//                           }
//                         },
//                         icon: const Icon(
//                           Icons.send_rounded,
//                           color: Color(0xFFCA7867),
//                         )),
//                     hintText: "email Address",
//                     border: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         TextButton(
//             onPressed: () {
//               Get.to(() => const Myotp());
//             },
//             child: const Text(
//               'Try to another way?',
//               style: TextStyle(color: Colors.black),
//             ))
//       ],
//     );
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/forgatPassScreen/otp_screen_for_email.dart';
import 'package:pawsomcommunity/forgatPassScreen/phone.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController email = TextEditingController();
  EmailOTP myauth = EmailOTP();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/img2.png",
                height: 250,
              ),
            ),
            const SizedBox(
              height: 60,
              child: Text(
                "Enter your Email",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.mail,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () async {
                          myauth.setConfig(
                              appEmail: "contact@hdevcoder.com",
                              appName: "Email OTP",
                              userEmail: email.text,
                              otpLength: 6,
                              otpType: OTPType.digitsOnly);
                          if (await myauth.sendOTP() == true) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("OTP has been sent"),
                            ));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpScreen(
                                  myauth: myauth,
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Oops, OTP send failed"),
                            ));
                          }
                        },
                        icon: const Icon(
                          Icons.send_rounded,
                          color: Color(0xFFCA7867),
                        ),
                      ),
                      hintText: "Email Address",
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => const MyPhone());
                  },
                  child: const Text(
                    'Try another way?',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
