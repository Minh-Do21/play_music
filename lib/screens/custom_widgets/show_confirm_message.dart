import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../common/size_config.dart';
import '../../utils/app_const/color_const.dart';
import '../../utils/app_const/font_const.dart';

void showConfirmMessage({
  required BuildContext context,
  required VoidCallback pressAccept,
  String? title,
  String? conntent,
  bool? isHiddenAccept = false,
}) {
  showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.4),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
                insetPadding: EdgeInsets.all(20),
                contentPadding: EdgeInsets.all(0),
                scrollable: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
                content: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 25,
                        left: getProportionateScreenWidth(30),
                        right: getProportionateScreenWidth(30),
                      ),
                      child: Text(title ?? 'Thông báo',
                          style: FONT_CONST.semoBold(
                              color: COLOR_CONST.mineShaft, fontSize: 18)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                        bottom: 25,
                        left: appDefaultPadding,
                        right: appDefaultPadding,
                      ),
                      child: Text(
                        conntent ?? '',
                        textAlign: TextAlign.center,
                        style: FONT_CONST.bold(
                            color: COLOR_CONST.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                        color: COLOR_CONST.silver.withOpacity(0.5),
                        width: 1,
                      ))),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CupertinoButton(
                                minSize: double.infinity,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(0)),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "Đóng",
                                  style: FONT_CONST.bold(
                                    color: COLOR_CONST.mineShaft,
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w300,
                                  ),
                                )),
                          ),
                          if(isHiddenAccept == false)...[
                            Container(
                              color: COLOR_CONST.silver.withOpacity(0.5),
                              width: 1,
                              height: double.maxFinite,
                            ),
                            Expanded(
                              flex: 1,
                              child: CupertinoButton(
                                  minSize: double.infinity,
                                  // color: COLOR_CONST.black,
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(0)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    pressAccept();
                                  },
                                  child: Text(
                                    "OK",
                                    style: FONT_CONST.bold(
                                      color: COLOR_CONST.amaranth,
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w300,
                                    ),
                                  )),
                            ),
                          ]
                        ],
                      ),
                    )
                  ],
                )),
          ),
        );
      },
      transitionDuration: Duration(milliseconds: 200),
      barrierDismissible: true,
      barrierLabel: '',
      context: context,
      pageBuilder: (context, animation1, animation2) {
        return Container();
      });
  // showDialog<bool>(
  //     barrierDismissible: true,
  //     useRootNavigator: true,
  //     context: context,
  //     builder: (context) {

  //       return AlertDialog(
  //         insetPadding: EdgeInsets.all(20),
  //         contentPadding: EdgeInsets.all(0),
  //         scrollable: true,
  //         shape: const RoundedRectangleBorder(
  //             borderRadius: BorderRadius.all(Radius.circular(12.0))),
  //         content: Column(
  //           children: [

  //             Padding(
  //               padding: EdgeInsets.only(
  //                 top: 25,
  //                 left: getProportionateScreenWidth(30),
  //                 right: getProportionateScreenWidth(30),
  //               ),
  //               child: Text(title ?? 'Thông báo',
  //                 style: FONT_CONST.semoBold(
  //                     color: COLOR_CONST.mineShaft,
  //                     fontSize: 18
  //                   )
  //                 ),
  //             ),
  //             Padding(
  //               padding: EdgeInsets.only(
  //                 top: 30,
  //                 bottom: 25,
  //                 left: appDefaultPadding,
  //                 right: appDefaultPadding,
  //               ),
  //               child: Text(
  //                 conntent ?? '',
  //                 textAlign: TextAlign.center,
  //                 style: FONT_CONST.bold(
  //                   color: COLOR_CONST.black,
  //                   fontSize: 17,
  //                   fontWeight: FontWeight.w500
  //                 ),
  //               ),
  //             ),
  //             Container(
  //               height: 50,
  //               decoration: BoxDecoration(
  //                 border: Border(
  //                   top: BorderSide(
  //                     color: COLOR_CONST.silver.withOpacity(0.5),
  //                     width: 1,

  //                   )
  //                 )
  //               ),
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     flex: 1,
  //                     child: CupertinoButton(
  //                       minSize: double.infinity,
  //                       borderRadius: const BorderRadius.all(Radius.circular(0)),
  //                       onPressed: () {
  //                         Navigator.of(context).pop();
  //                       },
  //                       child: Text(
  //                         "Đóng",
  //                         style: FONT_CONST.bold(
  //                           color: COLOR_CONST.mineShaft,
  //                           fontSize: 15,
  //                           // fontWeight: FontWeight.w300,
  //                         ),
  //                       )
  //                     ),
  //                   ),
  //                   Container(
  //                     color: COLOR_CONST.silver.withOpacity(0.5),
  //                     width: 1,
  //                     height: double.maxFinite,
  //                   ),
  //                   Expanded(
  //                     flex: 1,
  //                     child: CupertinoButton(
  //                       minSize: double.infinity,
  //                       // color: COLOR_CONST.black,
  //                       borderRadius: const BorderRadius.all(Radius.circular(0)),
  //                       onPressed: () {
  //                         Navigator.of(context).pop();
  //                         pressAccept();
  //                       },
  //                       child: Text(
  //                         "OK",
  //                         style: FONT_CONST.bold(
  //                           color: COLOR_CONST.amaranth,
  //                           fontSize: 15,
  //                           // fontWeight: FontWeight.w300,
  //                         ),
  //                       )
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             )
  //           ],
  //         )
  //       );
  //     }
  //   );
}

// class CustomConfirmDelete extends StatelessWidget {
//   final VoidCallback? pressButtonTop;
//   final VoidCallback? pressButtonBottom;
//   final String? selectedDate;
//   final String? pharmacistName;
//   final bool? isBusy;
//   const CustomConfirmDelete({
//     Key? key,
//     this.pressButtonTop,
//     this.pressButtonBottom,
//     this.selectedDate,
//     this.pharmacistName,
//     this.isBusy,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//         insetPadding: EdgeInsets.all(20),
//         contentPadding: EdgeInsets.all(0),
//         scrollable: true,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(12.0))),
//         content: Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               Container(
//                 child: SvgPicture.asset(
//                   ICON_CONST.ic_add.path,
//                   height: 156,
//                   width: 156,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 10),
//                 child: Text('Thank You!',
//                     style: FONT_CONST.semoBold(
//                         color: COLOR_CONST.mineShaft, fontSize: 36)),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 10),
//                 child: Text.rich(
//                   TextSpan(
//                     text: 'You booked an appointment with ',
//                     style: FONT_CONST.regular(
//                       color: COLOR_CONST.silverChalice,
//                       fontSize: 20,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: pharmacistName ?? 'PharmD. Pediatrician',
//                         style: FONT_CONST.bold(
//                           color: COLOR_CONST.silverChalice,
//                           fontSize: 20,
//                         ),
//                       ),
//                       TextSpan(
//                         text: ' on ',
//                         style: FONT_CONST.regular(
//                           color: COLOR_CONST.silverChalice,
//                           fontSize: 20,
//                         ),
//                       ),
//                       TextSpan(
//                         text: selectedDate ?? 'February 17, 2021',
//                         style: FONT_CONST.bold(
//                           color: COLOR_CONST.silverChalice,
//                           fontSize: 20,
//                         ),
//                       )
//                     ],
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               Padding(
//                   padding: EdgeInsets.only(top: 38),
//                   child: PrimaryButton(
//                       title: 'Closed', onPressed: pressButtonBottom)),
//               // GestureDetector(
//               //   onTap: pressButtonBottom,
//               //   child: Padding(
//               //       padding: EdgeInsets.only(top: 20),
//               //       child: Text(
//               //         'Close',
//               //         style: FONT_CONST.regular(
//               //             color: COLOR_CONST.silverChalice, fontSize: 16),
//               //       )),
//               // )
//             ],
//           ),
//         ));
//   }
// }
