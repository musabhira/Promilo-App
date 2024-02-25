import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/login_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/features/authentication/presentation/providers/auth_provider.dart';
import 'package:promilo/features/authentication/presentation/widgets/auth_user_forget_text_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/auth_user_text_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/auth_user_with_text_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/business_user_text_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/login_here_text_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/or_text_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/social_media_icons_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/submit_button_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/terms_text_widget.dart';
import 'package:promilo/features/authentication/presentation/widgets/text_field_widget.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});
  static const routepath = '/login';

  final TextEditingController emailController =
      TextEditingController(text: "test45@yopmail.com");
  final TextEditingController passwordController =
      TextEditingController(text: "Test@123");
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(loginPageConstantsProvider);
    final theme = AppTheme.of(context);

    Future<void> handleLogin() async {
      if (formKey.currentState!.validate()) {
        ref
            .read(authProvider.notifier)
            .login(emailController.text, passwordController.text, context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          constants.txtTitle,
          style: theme.typography.h100,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: theme.spaces.space_400,
              ),
              Center(
                child: Text(
                  constants.txtHeading,
                  style: theme.typography.h100,
                ),
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              AuthUserTextWidget(
                text: constants.txtSignTitle,
                textStyle: theme.typography.h200,
              ),
              TextFieldWidget(
                hintText: constants.txtHintEmail,
                hintStyle: theme.typography.h400,
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email cannot be empty";
                  }
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(emailController.text)) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                onChanged: (value) {
                  if (!formKey.currentState!.validate()) {
                    ref.read(authProvider.notifier).toggle(true);
                  } else {
                    ref.read(authProvider.notifier).toggle(false);
                  }
                },
              ),
              AuthUserWithTextWidget(text: constants.txtSignOtp),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              AuthUserTextWidget(
                text: constants.txtPassword,
                textStyle: theme.typography.h200,
              ),
              TextFieldWidget(
                hintText: constants.txtHintPassword,
                hintStyle: theme.typography.h400,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email cannot be empty";
                  }
                  return null;
                },
                onChanged: (value) {
                  if (!formKey.currentState!.validate()) {
                    ref.read(authProvider.notifier).toggle(true);
                  } else {
                    ref.read(authProvider.notifier).toggle(false);
                  }
                },
              ),
              AuthUserForgetTextWidget(text: constants.txtForgetPassword),
              SizedBox(
                height: theme.spaces.space_400,
              ),
              SubmitButton(
                onPressed: ref.watch(authProvider) ? null : () => handleLogin(),
              ),
              const OrTextwidget(),
              const SocialMediaIconsWidget(),
              SizedBox(
                height: theme.spaces.space_200,
              ),
              const BusinessUserTextWidget(),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              const LoginHereTextWidget(),
              SizedBox(
                height: theme.spaces.space_200,
              ),
              Center(
                  child: Text(
                constants.txtYouAgreeTo,
                style: theme.typography.h400,
              )),
              const TermsTextWidget()
            ],
          ),
        ),
      ),
    );
  }
}
