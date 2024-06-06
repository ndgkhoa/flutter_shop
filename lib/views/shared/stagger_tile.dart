import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/shared/appstyle.dart';
import 'package:flutter_application_1/views/shared/reuseable_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaggerTile extends StatefulWidget {
  const StaggerTile(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.price});

  final String imageUrl;
  final String name;
  final String price;

  @override
  State<StaggerTile> createState() => _StaggerTileState();
}

class _StaggerTileState extends State<StaggerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.h)),
      ),
      child: Padding(
          padding: EdgeInsets.all(8.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: widget.imageUrl,
                fit: BoxFit.cover,
              ),
              Container(
                  padding: EdgeInsets.only(top: 12.h),
                  height: 90.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reuseableText(
                        text: widget.name,
                        style: appstyleWithHt(
                            20, Colors.black, FontWeight.w700, 1),
                      ),
                      reuseableText(
                        text: widget.price,
                        style: appstyleWithHt(
                            20, Colors.black, FontWeight.w500, 1),
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}
