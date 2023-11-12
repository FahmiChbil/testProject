// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:testproject/Hotel/presentation/widgets/one_rate_widget.dart';
import 'package:testproject/Hotel/presentation/widgets/slider.dart';

class FilteModalBottomSheet extends StatelessWidget {
  const FilteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 0.9.sh,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
              height: 55.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ], color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        color: HexColor("c1c1c1"),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: HexColor("c1c1c1"),
                      ),
                    ),
                  ),
                  Text(
                    "Filters",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.close),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PRICE PER NIGHT",
                          style: TextStyle(
                              color: HexColor("37454d"),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              letterSpacing: 2),
                        ),
                        Container(
                          height: 50.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black38),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "540+",
                                  style: TextStyle(fontSize: 20.sp),
                                ),
                                Text(
                                  " \$",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: HexColor("697278")),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 45.h, child: const SliderExample()),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "20\$",
                              style: TextStyle(
                                  fontSize: 15.sp, color: HexColor("697278")),
                            ),
                            Text(
                              "540\$",
                              style: TextStyle(
                                  fontSize: 15.sp, color: HexColor("697278")),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "RATING",
                    style: TextStyle(
                        color: HexColor("37454d"),
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const OneRate(muText: "0+", mycolor: Colors.red),
                      SizedBox(
                        width: 30.w,
                      ),
                      OneRate(muText: "7+", mycolor: HexColor("fc9e15")),
                      SizedBox(
                        width: 30.w,
                      ),
                      OneRate(muText: "7.5+", mycolor: HexColor("62a30f")),
                      SizedBox(
                        width: 30.w,
                      ),
                      OneRate(muText: "8+", mycolor: HexColor("028000")),
                      SizedBox(
                        width: 30.w,
                      ),
                      OneRate(muText: "8.5+", mycolor: HexColor("005f00")),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "HOTEL CLASS",
                    style: TextStyle(
                        color: HexColor("37454d"),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: HexColor("f9c77f"))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.amber,
                              size: 15.sp,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15.sp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: HexColor("f9c77f"))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15.sp,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15.sp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: HexColor("f9c77f"))),
                        child: Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 15.sp,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 15.sp,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: HexColor("f9c77f"))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 15.sp,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 15.sp,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 15.sp,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 15.sp,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: HexColor("f9c77f"))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 11.sp,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 11.sp,
                                )
                              ],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 11.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 11.sp,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 11.sp,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Text(
                    "DISTANCE FROM",
                    style: TextStyle(
                        color: HexColor("37454d"),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Divider(
                    color: HexColor("cfd2d4"),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                            color: HexColor("37454d"), fontSize: 18.sp),
                      ),
                      Row(
                        children: [
                          Text(
                            "City center",
                            style: TextStyle(
                                color: HexColor("697379"), fontSize: 18.sp),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: HexColor("697379"),
                            size: 15.sp,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              child: Container(
                padding: EdgeInsetsDirectional.only(bottom: 1.h),
                height: 70.h,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ], color: Colors.white),
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                HexColor("007bc1")),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ))),
                        child: Center(
                          child: Text(
                            "show Result",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.sp),
                          ),
                        )),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
