import 'package:ca_firebase_app/App/pages/login/login_view.dart';
import 'package:ca_firebase_app/App/pages/register/register_contoller.dart';
import 'package:ca_firebase_app/Data/repositories/data_user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class RegisterView extends View {
  @override
  State<StatefulWidget> createState() {
    return _RegisterViewState(
      RegisterController(
        DataUserRepository(),
      ),
    );
  }
}

class _RegisterViewState extends ViewState<RegisterView, RegisterController> {
  _RegisterViewState(RegisterController controller) : super(controller);

  @override
  Widget get view {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: globalKey,
      body: ControlledWidgetBuilder<RegisterController>(
        builder: (context, controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 52,
                        left: 24,
                        right: 18,
                      ),
                      child: Image(
                          image: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/4bbe/6cfc/8b54021292fe48bf1fd630972d01258e?Expires=1648425600&Signature=EIb61Bh4pkbCGKkZ8BiJ~41wWfJWAG-YfnauvtUTRMBNTMS1r5dPmVkL9QajP1YvvhQvSb97h4p0nFlsqnbevbv4seX2B6AbiHW2GWIaThIw21KXsHErpaOMvRd2KshrRDLHiL5NPF1tL6k20ZDYP7H-FdkooOFUNRKMtW6CJgLL0VLYwL13iYwY0MVzlRTEoN0dOgRBhiTq7P1xSBMMAeEnJEZwOW8Is4W-hn1CurfNq2V7QmCKxcYYNB7M0c4soGTRB0kf8RJ-p4XIFw3tQjJsmfPnqMBLSQYER-hb78feiITcTXSmO~HF~SM3ecaM6pxnkNsg-Y3psV~uKBkpcQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA")),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      width: size.width - 36,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(235, 221, 218, 218),
                            offset: Offset(5, 2),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) =>
                            {controller.onEmailTextChanged(value)},
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "  " + 'Email Adresiniz',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width - 36,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(235, 221, 218, 218),
                            offset: Offset(5, 2),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        //obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (value) =>
                            {controller.onPasswordTextChanged(value)},
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "  " + 'Şifreniz',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width - 36,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(235, 221, 218, 218),
                            offset: Offset(5, 2),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) =>
                            {controller.onFirstNameTextChanged(value)},
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "  " + 'Adınız',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width - 36,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(235, 221, 218, 218),
                            offset: Offset(5, 2),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) =>
                            {controller.onLastNameChanged(value)},
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "  " + 'Soyadınız',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                        onTap: () {
                          controller.areFieldsIsEmpty
                              ? controller.createUser()
                              : null;
                        },
                        child: Container(
                          width: 127,
                          height: 53,
                          decoration: BoxDecoration(
                            color: Color(0xFF6c63ff),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Center(
                            child: Text(
                              "Kayıt Ol",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
