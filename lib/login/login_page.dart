
import 'dart:convert';

import 'package:aictec_digital_signage/login/login_view_model.dart';
import 'package:aictec_digital_signage/model/login_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_theme.dart';
import '../core/contents/constants.dart';
import '../core/default_button.dart';
import '../core/default_form_field.dart';
import '../core/utils/cache_helper.dart';
import '../core/utils/components.dart';
import '../core/utils/log.dart';
import '../services/app_locale.dart';
import '../theme/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  var result = {
    "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImthcnRoaWNrLnJAaW4uYWljdGVjLmNvbSIsInN1YiI6MSwibmFtZSI6ImthcnRoaWNrIiwicm9sZSI6IkFkbWluIiwiY29tcGFueUlkIjowLCJpYXQiOjE2OTU3NDA1ODksImV4cCI6MTY5NTgyNjk4OX0.5YYpCrxt8-89B_iOQCN7aGq2eteFIppqJjkEZSD5OkM",
    "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImthcnRoaWNrLnJAaW4uYWljdGVjLmNvbSIsInN1YiI6MSwibmFtZSI6ImthcnRoaWNrIiwicm9sZSI6IkFkbWluIiwiY29tcGFueUlkIjowLCJpYXQiOjE2OTU3NDA1ODksImV4cCI6MTY5NjM0NTM4OX0.aZ6C9czxXO6OZzaEvtuih0n5JoS8JGtJARFcPzC2HD0",
    "user": {
      "email": "karthick.r@in.aictec.com",
      "sub": 1,
      "name": "karthick",
      "role": "Admin",
      "companyId": 0
    },
    "success": true,
    "message": "Successfully",
    "role": {
      "id": 1,
      "name": "Admin",
      "permissions": "createRole,listRole,updateRole,deleteRole,createUser,listUser,updateUser,deleteUser,userProfile,setCompany,assignRole,createCompany,listCompany,updateCompany,deleteCompany,createDocument,listDocument,createMacId,listMacId,updateMacId,deleteMacId,createContent,listContent,updateContent,deleteContent",
      "isActive": true,
      "companyId": 0,
      "dateCreated": "2023-09-20T05:01:37.687Z",
      "dateUpdated": "2023-09-20T05:18:23.852Z"
    }
  };


  bool _showPassword = false;
  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return  Scaffold(
        body :Center(
          child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    children: [
                      const SizedBox(height: 130),
                      Container(
                        //margin: EdgeInsets.only(right : 35),
                        child :
                        Align(
                          alignment: Alignment.centerLeft,
                        child :Text(
                          "Login",
                          style: GoogleFonts.poppins(
                              fontSize: size.width * 0.050,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.blackColor,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      ),


                      const SizedBox(height: 30),
                      DefaultFormField(
                        controller: _userNameController,
                        height: 70,
                        validateMode: AutovalidateMode.onUserInteraction,
                        hint: "Username or Email",
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (term) {},
                        textInputAction: TextInputAction.done,
                        validatorFunction: (String? s) {
                          if (s!.isEmpty) {
                            return "Please give valid input";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      DefaultFormField(
                        controller: _passwordController,
                        height: 70,
                       // isPassword: _showPassword,
                        validateMode: AutovalidateMode.onUserInteraction,
                        hint: "Password",
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (term) {},
                        textInputAction: TextInputAction.done,
                        validatorFunction: (String? s) {
                          if (s!.isEmpty) {
                            return "Please give valid input";
                          }
                          return null;
                        },
                          suffixPressed: _togglevisibility,
                        suffixIcon: _showPassword ? Icons.visibility : Icons.visibility_off,
                      ),

                      const SizedBox(height: 30),
                      DefaultButton(
                        marginBottom: 8,
                        text: "Login",
                        function: () async => await _submit(context),
                      )

                // SizedBox(
                //     height: 120.0,
                //       child :TextFormField(
                //         autovalidateMode: AutovalidateMode.onUserInteraction,
                //         controller: _passwordController,
                //         obscureText: !_showPassword,
                //        // cursorColor: Colors.red,
                //         style: TextStyle(color: Colors.black,fontSize: 12),
                //         validator: (String? s) {
                //           if (s!.isEmpty) {
                //             return "Please give valid input";
                //           }
                //           return null;
                //         },
                //         decoration: InputDecoration(
                //           isDense: true,
                //           hintText: "Password",
                //           border: OutlineInputBorder(
                //             borderSide: const BorderSide(color: formFieldBorderColor),
                //             borderRadius: BorderRadius.circular(8),
                //           ),
                //           fillColor: Colors.white,
                //           enabledBorder: OutlineInputBorder(
                //             borderSide: const BorderSide(color: formFieldBorderColor),
                //             borderRadius: BorderRadius.circular(8),
                //           ),
                //           errorBorder: OutlineInputBorder(
                //             borderSide: const BorderSide(
                //               color: errorColor,
                //               width: 3,
                //             ),
                //             borderRadius: BorderRadius.circular(8),
                //           ),
                //           focusedBorder: OutlineInputBorder(
                //             borderSide: const BorderSide(color: formFieldBorderColor),
                //             borderRadius: BorderRadius.circular(8),
                //           ),
                //           suffixIcon: GestureDetector(
                //             onTap: () {
                //               _togglevisibility();
                //             },
                //             child: Icon(
                //               _showPassword ? Icons.visibility : Icons
                //                   .visibility_off, color: Colors.red,),
                //           ),
                //         ),
                //       ),
                // ),

                    ]
                )
            ),),)

    );

  }


  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  _submit(context) async {
    final connectionStatus = await checkInternetConnection();
    if (connectionStatus) {
      final response = await requestLoginResponse(
          userName: _userNameController.text, password: _passwordController.text);

      if (response!.success) {
       //Map valueMap = json.decode(response);
      //  LoginResponse  resp = LoginResponse.fromJson(response);
        Log.i(response.accessToken);
        Log.i(response.message);
        CacheHelper.savePrefs(key: Constants.accessToken, value: response.accessToken);
        CacheHelper.savePrefs(key: Constants.success, value: response.success);
        CacheHelper.savePrefs(key: Constants.message, value: response.message);

      }else{
        showToast(
          text: "Error while login. Please try some other times",
          bgColor: errorColor,
          textColor: whiteColor,
        );
      }
    }else {
      showToast(
        text: getString(context).internetProblem,
        bgColor: errorColor,
        textColor: whiteColor,
      );
    }

  }
}
