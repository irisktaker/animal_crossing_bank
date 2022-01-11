import 'package:animal_crossing_bank/auth/confirmation%20/confirmation.dart';
import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/build_text_form_field.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

import 'location_security_screen.dart';

import 'package:form_field_validator/form_field_validator.dart';

// https://dev.to/adityasubrahmanyabhat/flutter-textformfield-validation-made-easy-3e61

class CreateUserProfile extends StatefulWidget {
  const CreateUserProfile({Key? key}) : super(key: key);

  @override
  State<CreateUserProfile> createState() => _CreateUserProfileState();
}

class _CreateUserProfileState extends State<CreateUserProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _configPassController = TextEditingController();

  bool _isPassHidden = true;
  bool _isConfPassHidden = true;

  // send text field values to another screen
  getItemAndNavigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConfirmationScreen(
          nameHolder: _fullNameController.text,
          numberHolder: _phoneNumberController.text,
          emailHolder: _emailController.text,
          passwordHolder: _passwordController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          baseBackgroundImage2(size),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 60),
                        const SizedBox(
                          width: 50,
                          child: CircleAvatar(
                            radius: 21.5,
                            backgroundColor: Color(0xFF037F76),
                            backgroundImage: AssetImage(
                              'assets/images/user_profile_picture.png',
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Transform.rotate(
                          angle: 40,
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 500,
                          color: Colors.black,
                        ),
                        Transform.rotate(
                          angle: 40,
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildHeadTitle(text: 'User\nInformation', size: 33),
                            buildDivider(),
                            buildHeadTitle(text: 'User Profile', size: 33),
                            const SizedBox(height: 10),
                            const CircleAvatar(
                              radius: 40,
                              backgroundColor: Color(0xFF037F76),
                              backgroundImage: AssetImage(
                                  'assets/images/user_profile_picture.png'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Upload Photo',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontFamily: 'Bolt Regular',
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.camera_alt,
                                  ),
                                ),
                              ],
                            ),
                            buildTextFormField(
                              controller: _fullNameController,
                              // The RequiredValidator takes in a single argument of type String for the errorText property and makes sure that the input field isn't empty .
                              // If it is empty , it displays the errorText specified.
                              validator:
                                  RequiredValidator(errorText: "Required"),
                              hint: 'Full Name',
                              keyboardType: TextInputType.text,
                              widthHeightPadding: const EdgeInsets.fromLTRB(
                                13.0,
                                10.0,
                                20.0,
                                10.0,
                              ),
                            ),
                            const SizedBox(height: 10),
                            buildTextFormField(
                              controller: _phoneNumberController,
                              hint: 'Phone Number',
                              keyboardType: TextInputType.number,
                              widthHeightPadding: const EdgeInsets.fromLTRB(
                                  13.0, 10.0, 20.0, 10.0),
                            ),
                            const SizedBox(height: 10),
                            buildTextFormField(
                              controller: _emailController,
                              // MultiValidator takes a list of validators as arguments.
                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required"),
                                  EmailValidator(
                                      errorText:
                                          "Please enter a valid email address"),
                                ],
                              ),
                              hint: 'Email',
                              keyboardType: TextInputType.emailAddress,
                              widthHeightPadding: const EdgeInsets.fromLTRB(
                                  13.0, 10.0, 20.0, 10.0),
                            ),
                            const SizedBox(height: 10),
                            buildTextFormField(
                              controller: _passwordController,
                              validator: MultiValidator(
                                [
                                  RequiredValidator(errorText: "Required"),
                                  MinLengthValidator(6,
                                      errorText:
                                          "Password must contain at least 6 characters"),
                                  MaxLengthValidator(15,
                                      errorText:
                                          "Password cannot be more 15 characters"),
                                  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                                      errorText:
                                          "Password must have at least one special character"),
                                ],
                              ),
                              hint: 'Password',
                              widthHeightPadding: const EdgeInsets.fromLTRB(
                                  13.0, 10.0, 20.0, 10.0),
                              keyboardType: TextInputType.visiblePassword,
                              obscure: _isPassHidden,
                              suffixIcon: IconButton(
                                onPressed: () => setState(
                                  () => _isPassHidden = !_isPassHidden,
                                ),
                                icon: _isPassHidden
                                    ? const Icon(
                                        Icons.visibility,
                                        color: Colors.black,
                                        size: 16,
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: Colors.black,
                                        size: 16,
                                      ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            buildTextFormField(
                              controller: _configPassController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Required";
                                }
                                return MatchValidator(
                                        errorText: "Passwords don't match")
                                    .validateMatch(
                                  val,
                                  _passwordController.text,
                                );
                              },
                              hint: 'Confirm Password',
                              widthHeightPadding: const EdgeInsets.fromLTRB(
                                  13.0, 10.0, 20.0, 10.0),
                              keyboardType: TextInputType.visiblePassword,
                              obscure: _isConfPassHidden,
                              suffixIcon: IconButton(
                                onPressed: () => setState(
                                  () => _isConfPassHidden = !_isConfPassHidden,
                                ),
                                icon: _isConfPassHidden
                                    ? const Icon(
                                        Icons.visibility,
                                        color: Colors.black,
                                        size: 16,
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: Colors.black,
                                        size: 16,
                                      ),
                              ),
                            ),
                            const SizedBox(height: 60),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildMainBtn(
                                  text: 'go back'.toUpperCase(),
                                  btnColor: const Color(0xFF037F76),
                                  textColor: const Color(0xFFFFFFFF),
                                  press: () {
                                    Navigator.pop(context);
                                  },
                                  minimumSize: const Size(124, 38),
                                  fontSize: 14,
                                  padding: const EdgeInsets.all(0),
                                  fontWeight: FontWeight.normal,
                                ),
                                buildMainBtn(
                                  text: 'continue'.toUpperCase(),
                                  btnColor: const Color(0xFFAA6E29),
                                  textColor: const Color(0xFFFFFFFF),
                                  press: () {
                                    if (_formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Colors.white,
                                          content: Text(
                                            'Validation Successful',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      );

                                      getItemAndNavigate(context);

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LocationAndSecurityScreen(),
                                        ),
                                      );
                                    }
                                  },
                                  minimumSize: const Size(124, 38),
                                  fontSize: 14,
                                  padding: const EdgeInsets.all(0),
                                  fontWeight: FontWeight.normal,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
