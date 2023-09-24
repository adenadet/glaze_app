import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:glaze_credit_app/constants/colors.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: appBlackColor,
        ),
        title: Text(
          appName,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appCardBgColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_4_sharp),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dashboardTitle, style: textTheme.bodyLarge),
              Text(dashboardHeading, style: textTheme.headlineLarge),
              const SizedBox(height: dashboardPadding),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                  left: BorderSide(width: 4),
                )),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dashboardSearch,
                      style: textTheme.headlineLarge!
                          .apply(color: Colors.grey.withOpacity(0.5)),
                    ),
                    const Icon(Icons.search, size: 25),
                  ],
                ),
              ),
              const SizedBox(height: dashboardCardPadding),
              SizedBox(
                  height: 48,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        width: 170,
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: appDarkPrimaryColor,
                              ),
                              width: 45,
                              height: 45,
                              child: Center(
                                child: Text(
                                  "PL",
                                  style: textTheme.bodyMedium!
                                      .apply(color: appWhiteColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dashboardBanner1,
                                    style: textTheme.headlineMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    dashboardBannerSubTitle,
                                    style: textTheme.displayMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 170,
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: appDarkPrimaryColor,
                              ),
                              width: 45,
                              height: 45,
                              child: Center(
                                child: Text(
                                  "PL",
                                  style: textTheme.bodyMedium!
                                      .apply(color: appWhiteColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dashboardBanner1,
                                    style: textTheme.headlineMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    dashboardBannerSubTitle,
                                    style: textTheme.displayMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
