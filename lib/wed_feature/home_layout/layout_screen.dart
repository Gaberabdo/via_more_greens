import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:via_green/wed_feature/home_layout/cubit/home_cubit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;

class LayoutScreen extends StatelessWidget {
  LayoutScreen({Key? key}) : super(key: key);
  final Uri _url =
      Uri.parse('https://api.whatsapp.com/send/?phone=201005513309');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..getWelcomeImage()
        ..getDEHYDRATEDData()
        ..getHERBALTEASData()
        ..getSeedsData()
        ..getSpicesData()
        ..getFooderData(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          var cubit = HomeCubit.get(context);
          return DefaultTabController(
            length: 5,
            animationDuration: const Duration(milliseconds: 400),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: TabBar(
                  labelColor: const Color(0xFF0C9869),
                  unselectedLabelColor: Colors.grey,
                  tabs: cubit.items,
                  onTap: (index) {
                    cubit.changeBottomNav(index);
                  },
                ),
              ),
              bottomNavigationBar: Container(
                color: Colors.grey.shade50,
                height: 60,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: Text(
                          '©2022 Innovitics All Rights Reserved | Design by Gaber.'),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/image/facebook-logo.png',
                      height: 35,
                      width: 35,
                    ),
                    SizedBox(width: 12,),
                    Image.asset(
                      'assets/image/linkedin.png',
                      height: 35,
                      width: 35,
                    ),
                    SizedBox(width: 12,),


                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: _launchUrl,
                child:    Image.asset(
                  'assets/image/whatsapp.png',
                  height: 35,
                  width: 35,
                ),
              ),
              body: (HomeCubit.get(context).modelFooder.isNotEmpty)
                  ? cubit.screens[cubit.currentIndex]
                  : const Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
