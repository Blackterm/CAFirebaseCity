import 'package:ca_firebase_app/App/pages/addCity/addCity_controller.dart';
import 'package:ca_firebase_app/App/pages/home/home_view.dart';
import 'package:ca_firebase_app/Data/repositories/data_city_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class AddCityView extends View {
  @override
  State<StatefulWidget> createState() {
    return _AddCityViewState(
      AddCityController(
        DataCityRepository(),
      ),
    );
  }
}

class _AddCityViewState extends ViewState<AddCityView, AddCityController> {
  _AddCityViewState(AddCityController controller) : super(controller);

  @override
  Widget get view {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: globalKey,
      body: ControlledWidgetBuilder<AddCityController>(
        builder: (context, controller) {
          return SafeArea(
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xFF6c63ff),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            (context),
                            MaterialPageRoute(
                              builder: (context) => HomeView(),
                            ),
                          );
                          ;
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(
                          "Şehir Ekle",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          children: [
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
                                keyboardType: TextInputType.text,
                                onChanged: (value) =>
                                    {controller.onCityNameChanged(value)},
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "  " + 'Şehirin Adı',
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
                                keyboardType: TextInputType.text,
                                onChanged: (value) =>
                                    {controller.onContentChanged(value)},
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "  " + 'Şehirin Açıklaması',
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
                                keyboardType: TextInputType.text,
                                onChanged: (value) =>
                                    {controller.onImageUrlChanged(value)},
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "  " + 'Şehirin resmi',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            GestureDetector(
                                onTap: () {
                                  controller.areFieldsIsEmpty
                                      ? controller.addCity()
                                      : null;
                                },
                                child: Container(
                                  width: 127,
                                  height: 53,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF6c63ff),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Şehiri Ekle",
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
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
