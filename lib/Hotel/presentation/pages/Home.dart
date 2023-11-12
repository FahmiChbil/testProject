// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:testproject/Hotel/data/datasources/remote_data_source.dart';

import 'package:testproject/Hotel/domain/entities/AllHotels.dart';
import 'package:testproject/Hotel/presentation/widgets/Filter_model_bottom_sheet.dart';
import 'package:testproject/Hotel/presentation/widgets/sort_modal_bottom_sheet.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: HexColor("f3f3f3"),
          body: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FutureBuilder(
                      future: HotelRemoteDataSourceImpl().getHotels(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView(
                            children: [...listOfHotels(snapshot)],
                          );
                        } else {
                          return const Text("errr");
                        }
                      })),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 13.w),
                height: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                      icon: Icon(
                        Icons.tune,
                        color: HexColor("007fac"),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) =>
                                const FilteModalBottomSheet());
                      },
                      label: Text(
                        "Filters",
                        style: TextStyle(
                            fontSize: 16.sp, color: HexColor("007fac")),
                      ),
                    ),
                    TextButton.icon(
                      icon: Icon(
                        Icons.menu_outlined,
                        color: HexColor("007fac"),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => const SortModalBottomSheet());
                      },
                      label: Text(
                        "Sort",
                        style: TextStyle(
                            fontSize: 16.sp, color: HexColor("007fac")),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 20.h,
                left: 0.3.sw,
                child: Container(
                  height: 50.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(color: Colors.white, width: 3),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYab2MfbZMoWJdCPy5M4W5ozvH74bMuOiLBQ&usqp=CAU"))),
                  child: Center(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 35.w, vertical: 8.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor("007bc1")),
                      child: const Center(
                        child: Text(
                          "Map ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  List<Widget> listOfHotels(AsyncSnapshot<AllHotels> snapshot) {
    return List.generate(
      snapshot.data!.allHotels.length,
      (index) => Container(
        width: 200,
        margin: EdgeInsets.symmetric(vertical: 14.h, horizontal: 9.w),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ], borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          children: [
            Container(
              height: 140.h,
              width: 100.sw,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage(snapshot.data!.allHotels[index].image),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                    right: 20.w,
                    child: Container(
                      height: 45.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          color: HexColor("2a3338"), shape: BoxShape.circle),
                      child: Center(
                        child: GestureDetector(
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ...List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                size: 15.sp,
                                color: Colors.grey,
                              )),
                      Text(
                        "Hotel",
                        style: TextStyle(fontSize: 15.sp, color: Colors.black),
                      )
                    ],
                  ),
                  Text(
                    snapshot.data!.allHotels[index].name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 45,
                        decoration: BoxDecoration(
                            color: HexColor("005f01"),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                              snapshot.data!.allHotels[index].review_score
                                  .toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(snapshot.data!.allHotels[index].review),
                      SizedBox(
                        width: 7.w,
                      ),
                      Icon(
                        Icons.place,
                        size: 15.sp,
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(snapshot.data!.allHotels[index].address),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 7.w, vertical: 15.h),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: HexColor("bfdfea"),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 1),
                                child: Text(
                                  "our lowest price",
                                  style: TextStyle(fontSize: 18.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              "\$${snapshot.data!.allHotels[index].price}"
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor("005f01")),
                            ),
                            const Text("renaissance")
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "View Deal ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.arrow_forward_ios)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "More prices",
                        style: TextStyle(
                            color: HexColor("6c717c"),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
