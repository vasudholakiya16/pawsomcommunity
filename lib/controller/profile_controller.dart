import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/consts/firebase_constent.dart';

class ProfileController extends GetxController {
  var isloading = false.obs;

  // // Text fields
  var newpassController = TextEditingController();

  // Update profile
  updateProfile({password}) async {
    var store = firestore.collection(userCollections).doc(currentUser!.uid);

    await store.update({
      'password': password,
    });
    isloading(false);
  }

  // Change Auth Password
  changeAuthPassword({email, password, newpassword}) async {
    final cred = EmailAuthProvider.credential(email: email, password: password);
    await currentUser!.reauthenticateWithCredential(cred).then((value) {
      currentUser!.updatePassword(newpassword);
    }).catchError((error) {
      print(error.toString());
    });
  }
}
