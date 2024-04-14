import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puss_puss/data/repositories/auth_repo.dart';
import 'package:puss_puss/data/repositories/user_repository.dart';
import 'package:puss_puss/features/auth/views/verify+/verify_email.dart';
import 'package:puss_puss/utils/constants/image_strings.dart';
import 'package:puss_puss/utils/popups/full_screen_loader.dart';
import 'package:puss_puss/utils/popups/loaders.dart';

import '../../../utils/helpers/network_manager.dart';
import '../../personalization/models/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final fistName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      MFullScreenLoader.openLoadingDialog(
          'We are processing your information...', MImages.avi);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      if (!signupFormKey.currentState!.validate()) {
        MFullScreenLoader.stopLoading();
        return;
      }

      if (!privacyPolicy.value) {
        MLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create an account, you have to accpet the Terms of Use and Privacy Policy');
        return;
      }

      //Register user and save data in firebase
      final userCredential = await AuthRepo.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //save authenticated user data in firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: fistName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        profilePicture: '',
      );

      final userRespository = Get.put(UserRespository());
      userRespository.saveUserRecord(newUser);

      MFullScreenLoader.stopLoading();

      MLoaders.successSnackBar(
          title: 'Congratulations',
          message:
              'Your account has been created successfully, Verify to continue.');

      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
      
    } catch (e) {
      MFullScreenLoader.stopLoading();

      MLoaders.errorSnackBar(title: 'Opps!', message: e.toString());
    }
  }
}
