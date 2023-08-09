import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:via_green/wed_feature/home_layout/cubit/home_cubit.dart';
import 'package:via_green/wed_feature/home_layout/layout_screen.dart';
import 'dart:ui' as ui;

import '../../core/const/consts.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var cubit = HomeCubit.get(context);
    ui.platformViewRegistry.registerViewFactory(
      cubit.welcomeModel!,
      (int _) => ImageElement()..src = cubit.welcomeModel,
    );
    ui.platformViewRegistry.registerViewFactory(
      cubit.modelDEHYDRATED.first.image,
      (int _) => ImageElement()..src = cubit.modelDEHYDRATED.first.image,
    );
    ui.platformViewRegistry.registerViewFactory(
      cubit.modelSeeds.first.image,
      (int _) => ImageElement()..src = cubit.modelSeeds.first.image,
    );
    ui.platformViewRegistry.registerViewFactory(
      cubit.modelSpices.first.image,
      (int _) => ImageElement()..src = cubit.modelSpices.first.image,
    );
    ui.platformViewRegistry.registerViewFactory(
      cubit.modelHERBALTEAS.first.image,
      (int _) => ImageElement()..src = cubit.modelHERBALTEAS.first.image,
    );

    ui.platformViewRegistry.registerViewFactory(
      cubit.modelFooder[0].image,
      (int _) => ImageElement()..src = cubit.modelFooder[0].image,
    );

    ui.platformViewRegistry.registerViewFactory(
      cubit.modelFooder[1].image,
      (int _) => ImageElement()..src = cubit.modelFooder[1].image,
    );

    ui.platformViewRegistry.registerViewFactory(
      cubit.modelFooder[2].image,
      (int _) => ImageElement()..src = cubit.modelFooder[2].image,
    );

    ui.platformViewRegistry.registerViewFactory(
      'https://img.freepik.com/free-vector/green-leaf-check-mark_78370-1146.jpg?size=626&ext=jpg&uid=R78903714&ga=GA1.2.798062041.1678310296&semt=ais',
      (int _) => ImageElement()
        ..src =
            'https://img.freepik.com/free-vector/green-leaf-check-mark_78370-1146.jpg?size=626&ext=jpg&uid=R78903714&ga=GA1.2.798062041.1678310296&semt=ais',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);

        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                  child: HtmlElementView(
                    viewType: cubit.welcomeModel!,
                  ),
                ),
                Container(
                  color: Colors.grey.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Discover',
                            style: TextStyle(
                              fontSize: 18,
                              color: teal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'OUR PRODUCTS',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Spacer(),
                              MaterialButton(
                                onPressed: () {
                                  cubit.changeBottomNav(2);

                                },
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 12,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 180,
                                        width: 190,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: HtmlElementView(
                                            viewType:
                                                cubit.modelDEHYDRATED.first.image,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        cubit.modelDEHYDRATED.first.name
                                            .toUpperCase(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                              MaterialButton(
                                onPressed: () {
                                  cubit.changeBottomNav(2);

                                },
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 12,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 180,
                                        width: 190,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: HtmlElementView(
                                            viewType:
                                                cubit.modelSeeds.first.image,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        cubit.modelSeeds.first.name.toUpperCase(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                              MaterialButton(
                                onPressed: () {
                                  cubit.changeBottomNav(2);

                                },
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 12,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 180,
                                        width: 190,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: HtmlElementView(
                                            viewType:
                                                cubit.modelSpices.first.image,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        cubit.modelSpices.first.name
                                            .toUpperCase(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                              MaterialButton(
                                onPressed: () {
                                  cubit.changeBottomNav(2);

                                },
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 12,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 180,
                                        width: 190,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: HtmlElementView(
                                            viewType:
                                                cubit.modelHERBALTEAS.first.image,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        cubit.modelHERBALTEAS.first.name
                                            .toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: MaterialButton(
                            onPressed: () {
                              cubit.changeBottomNav(2);
                            },
                            color: teal,
                            height: 54,
                            minWidth: 300,
                            child: const Text(
                              'Lode More',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 400,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                const Spacer(),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: HtmlElementView(
                                    viewType: cubit.modelFooder[0].image,
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: HtmlElementView(
                                    viewType: cubit.modelFooder[1].image,
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: HtmlElementView(
                                    viewType: cubit.modelFooder[2].image,
                                  ),
                                ),
                                const Spacer(),
                              ],
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                Column(
                                  children: [
                                    Icon(
                                      IconlyLight.call,
                                      color: teal,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text('Tel:+201005513309'),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.alternate_email,
                                      color: teal,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text('openviagreensopen@gmail.com'),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: teal,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text('Egypt\t,67 L Hydik Elharam,Giza '),
                                  ]
                                ),
                                const Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: HtmlElementView(
                            viewType:
                                'https://img.freepik.com/free-vector/green-leaf-check-mark_78370-1146.jpg?size=626&ext=jpg&uid=R78903714&ga=GA1.2.798062041.1678310296&semt=ais'!,
                          ),
                          height: 140,
                          width: 140,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
