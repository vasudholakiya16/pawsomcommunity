import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/consts/colors.dart';
import 'package:pawsomcommunity/consts/strings.dart';
import 'package:pawsomcommunity/controller/profile_controller.dart';
import 'package:pawsomcommunity/forgatPassScreen/password_created_screen.dart';
import 'package:pawsomcommunity/same_code/customText.dart';
import 'package:pawsomcommunity/same_code/outButton.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfileScreen extends StatelessWidget {
  final dynamic data;

  const EditProfileScreen({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var controller = Get.find<ProfileController>();
    var controller = Get.find<ProfileController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              10.heightBox,
              10.heightBox,
              customTextField(
                controller: controller.newpassController,
                // password
                hint: passwordHint,
                title: newpassword,
                isPass: true,
              ),
              20.heightBox,
              controller.isloading.value
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                        Color(0xFFF48B76),
                      ),
                    )
                  : SizedBox(
                      width: context.screenWidth - 40,
                      child: ourButton(
                          onpress: () async {
                            controller.isloading(true);
                            await controller.updateProfile(
                                password: controller.newpassController.text);
                            VxToast.show(context,
                                msg: 'Reset password successfully');
                            Get.to(() => const PasswordCreatedScreen());
                          },
                          color: const Color(0xFFF48B76),
                          textColor: whiteColor,
                          title: "Reset Password",
                          onPress: () {}),
                    ),
            ],
          )
              .box
              .padding(const EdgeInsets.all(16))
              .margin(const EdgeInsets.only(top: 50, left: 12, right: 12))
              .rounded
              .make(),
        ),
      ),
    );
  }
}
