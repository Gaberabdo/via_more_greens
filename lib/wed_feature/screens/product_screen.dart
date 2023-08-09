import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:via_green/core/models/product_model.dart';
import 'package:via_green/wed_feature/home_layout/cubit/home_cubit.dart';
import 'dart:ui' as ui;

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        List<Widget> screensProd = [
          buildGridView1(cubit),
          buildGridView2(cubit),
          buildGridView3(cubit),
          buildGridView4(cubit),
        ];
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.white,

            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/PRODUCTS/pro.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Image.asset(
                    'assets/PRODUCTS/dis.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Image.asset(
                    'assets/PRODUCTS/Our.png',
                    fit: BoxFit.cover,
                  ),
                  TabBar(
                    isScrollable: true,
                    labelColor: const Color(0xFF0C9869),
                    unselectedLabelColor: Colors.black,
                    tabs: cubit.itemsProd,
                    onTap: (value) {
                      cubit.changeBottomNavProd(value);
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: screensProd[cubit.currentIndexProd],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class BuildWidget extends StatelessWidget {
  BuildWidget({Key? key, required this.model}) : super(key: key);
  ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      elevation: 12,
      child: Column(
        children: [
          SizedBox(
            height: 180,
            width: 190,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: HtmlElementView(
                viewType: model.image,
              ),
            ),
          ),
          Text(
            model.name.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


GridView buildGridView1(HomeCubit cubit) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      mainAxisExtent: 235.0,
      maxCrossAxisExtent: 235.0,
      crossAxisSpacing: 40,
      mainAxisSpacing: 40,
    ),
    itemBuilder: (context, index) {
      ui.platformViewRegistry.registerViewFactory(
        cubit.modelDEHYDRATED[index].image,
            (int _) => ImageElement()..src = cubit.modelDEHYDRATED[index].image,
      );
      return BuildWidget(
        model: cubit.modelDEHYDRATED[index],
      );
    },
    itemCount: cubit.modelDEHYDRATED.length,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
  );
}
GridView buildGridView2(HomeCubit cubit) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      mainAxisExtent: 235.0,
      maxCrossAxisExtent: 235.0,
      crossAxisSpacing: 40,
      mainAxisSpacing: 40,
    ),
    itemBuilder: (context, index) {
      ui.platformViewRegistry.registerViewFactory(
        cubit.modelHERBALTEAS[index].image,
            (int _) => ImageElement()..src = cubit.modelHERBALTEAS[index].image,
      );
      return BuildWidget(
        model: cubit.modelHERBALTEAS[index],
      );
    },
    itemCount: cubit.modelHERBALTEAS.length,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
  );
}
GridView buildGridView3(HomeCubit cubit) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      mainAxisExtent: 235.0,
      maxCrossAxisExtent: 235.0,
      crossAxisSpacing: 40,
      mainAxisSpacing: 40,
    ),
    itemBuilder: (context, index) {
      ui.platformViewRegistry.registerViewFactory(
        cubit.modelSeeds[index].image,
            (int _) => ImageElement()..src = cubit.modelSeeds[index].image,
      );
      return BuildWidget(
        model: cubit.modelSeeds[index],
      );
    },
    itemCount: cubit.modelSeeds.length,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
  );
}
GridView buildGridView4(HomeCubit cubit) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      mainAxisExtent: 235.0,
      maxCrossAxisExtent: 235.0,
      crossAxisSpacing: 40,
      mainAxisSpacing: 40,
    ),
    itemBuilder: (context, index) {
      ui.platformViewRegistry.registerViewFactory(
        cubit.modelSpices[index].image,
        (int _) => ImageElement()..src = cubit.modelSpices[index].image,
      );
      return BuildWidget(
        model: cubit.modelSpices[index],
      );
    },
    itemCount: cubit.modelSpices.length,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
  );
}


