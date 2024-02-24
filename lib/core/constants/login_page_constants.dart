import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_page_constants.g.dart';

class LoginPageConstants {
  final String txtTitle = 'promilo';
  final String txtHeading = 'Hi, Welcome Back!';
  final String txtSignTitle = 'Please Sign in to continue';
  final String txtPassword = 'Password';
  final String txtHintEmail = 'Enter Email or Mob No.';
  final String txtHintPassword = 'Enter Password';
  final String txtSignOtp = 'Sign In With OTP';
  final String txtForgetPassword = 'Forget Password';
  final String txtIconSummit = 'Submit';
  final String txtOr = 'or';
  final String txtRememberMe = 'Remember Me';
  final String txtBusinessUser = 'Business User ?';
  final String txtDontAccount = "Don't have an account";
  final String txtLoginHere = 'Login Here';
  final String txtSignUp = 'Sign Up';
  final String txtYouAgreeTo = 'By continuing,you agree to';
  final String txtTerms = 'Terms of Use & Privacy Policy';
  final String txtPromilos = "Promilo's";
}

@riverpod
LoginPageConstants loginPageConstants(LoginPageConstantsRef ref) {
  return LoginPageConstants();
}
