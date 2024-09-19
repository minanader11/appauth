import 'package:cairo/model/global/data_manager_response.dart';
import 'package:cairo/model/user/user_info_oauth.dart';
import 'package:cairo/repository/user_repository.dart';
import 'package:cairo/utils/extensions.dart';
import 'package:cairo/values/app_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../repository/dummy_login_repository.dart';
import '../../resources/images.dart';
import '../../services/api_service.dart';
import '../../values/app_colors.dart';
import '../../values/app_constants.dart';
import 'login_view_model.dart';
//import 'package:cairo/utils/globals.dart' as globals;

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    // Create LoginRepository instance with the ApiService instance
    final loginRepository =
        DummyLoginRepository(apiService: ApiService(dio: dio));
    final viewModel = LoginViewModel(userRepository: loginRepository);

    final size = context.customSize;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          child: Image.asset(
            Images.bus,
            opacity: const AlwaysStoppedAnimation(.10),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  height: size.height * 0.16,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1B477C),
                        Color(0xff152534),
                        Color(0xff0C1C2E),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in to your Account',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _formKey.currentState?.validate();
                          });
                        },
                        controller: emailController,
                        decoration: const InputDecoration(labelText: 'Email'),
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.always,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.email(
                              errorText: 'Invalid Email Address'),
                        ]),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _formKey.currentState?.validate();
                          });
                        },
                        controller: passwordController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              },
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                  const Size(48, 48),
                                ),
                              ),
                              icon: Icon(
                                isObscure
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        autovalidateMode: AutovalidateMode.always,
                        obscureText: isObscure,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          // FormBuilderValidators.match(
                          //     AppConstants.passwordRegexString,
                          //     errorText: 'Invalid Password'),
                        ]),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: Theme.of(context).textButtonTheme.style,
                        child: Text(
                          'Forgot Password?',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      FilledButton(
                        onPressed: _formKey.currentState?.validate() ?? false
                            ? () async {
                                final req = <dynamic, dynamic>{
                                  'email': emailController.value.text,
                                  'password': passwordController.value.text,
                                };
                                // Call the login method in the view model with the request
                                //viewModel.login(req);

                                // invoke wso2 Login page:
                                DataManagerResponse<UserInfoOauth>
                                    responseLogin =
                                    await UserRepository().loginCrmOauth();

                                if (responseLogin
                                    .response!.accessToken.isNotEmpty) {
                                  //replace global variable with save in storage
                                  //  globals.user = responseLogin.response!;
                                  print("bearer ${responseLogin.response!.accessToken}");
                                  AppRoutes.ticketType.pushName();
                                }

                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Logged In!'),
                                  ),
                                );
                                passwordController.clear();
                                emailController.clear();
                              }
                            : null,
                        style: const ButtonStyle().copyWith(
                          backgroundColor: MaterialStateProperty.all(
                            _formKey.currentState?.validate() ?? false
                                ? null
                                : Colors.grey.shade400,
                          ),
                        ),
                        child: const Text('Login'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: Theme.of(context).textButtonTheme.style,
                        child: Text(
                          'Register',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
