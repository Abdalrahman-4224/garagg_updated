import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';



class DriverAppbar extends StatelessWidget {
  const DriverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, right: 12, left: 12),
                      child: Container(
                        width: context.width * 0.15,
                        height: context.height * 0.15,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          child: SvgPicture.asset('assets/icons/Bell.svg'),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16.0, right: 16, left: 16),
                      child: Container(
                          width: context.width * 0.15,
                          height: context.height * 0.15,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: const Color(0xffF5DFCA)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Image.asset('assets/images/user.png'),
                            onPressed: () {},
                          )),
                    ),
                  ],
                );
  }
}

