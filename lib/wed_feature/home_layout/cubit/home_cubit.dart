import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:via_green/core/models/product_model.dart';
import 'package:via_green/wed_feature/authentication/sign_screen.dart';
import 'package:via_green/wed_feature/screens/about_screen.dart';
import 'package:via_green/wed_feature/screens/feeds_screen.dart';
import 'package:via_green/wed_feature/screens/product_screen.dart';

import '../../screens/manufacturing.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<Tab> items = [
    const Tab(
      text: 'HOME',
    ),
    const Tab(
      text: 'ABOUT',
    ),
    const Tab(
      text: 'PRODUCTS',
    ),
    const Tab(
      text: 'MANUFACTURING',
    ),
    const Tab(
      text: 'CONTACT US',
    ),
  ];
  List<Tab> itemsProd = [
    const Tab(
      text: 'DEHYDRATED',
    ),
    const Tab(
      text: 'HERBAL_TEAS',
    ),
    const Tab(
      text: 'Seeds',
    ),
    const Tab(
      text: 'SPICES',
    ),

  ];
  int currentIndex = 0;

  List<Widget> screens = [
    FeedsScreen(),
    AboutScreen(),
    ProductScreen(),
    ManufacturingScreen(),
    SignUpScreen(),
  ];


  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNav());
  }
  int currentIndexProd = 0;
  void changeBottomNavProd(int index) {
    currentIndexProd = index;
    emit(ChangeBottomNav());
  }
  String? welcomeModel;
  Future<void> getWelcomeImage() async {
    emit(GetProductLoading());
    FirebaseFirestore.instance
        .collection('home')
        .doc('d4EGCoYhwWVgvaOgiMfw')
        .get()
        .then((value) {
      value.data()!.forEach((key, value) {
        welcomeModel = value;
        print(welcomeModel);
      });
      emit(GetProductSuccess());
    }).catchError((onError) {
      print(onError);
      emit(GetProductError());
    });
  }

  List<ProductModel> modelDEHYDRATED = [];
  Future<void> getDEHYDRATEDData() async {
    emit(GetProductLoading());
    FirebaseFirestore.instance
        .collection('DEHYDRATED')
        .snapshots()
        .listen((value) {
      for (var element in value.docs) {
        modelDEHYDRATED.add(ProductModel.fromJson(element.data()));
        print(modelDEHYDRATED);
      }
      emit(GetProductSuccess());
    }).onError((onError) {
      print(onError);
      emit(GetProductError());
    });
  }

  List<ProductModel> modelHERBALTEAS = [];
  Future<void> getHERBALTEASData() async {
    emit(GetProductLoading());
    FirebaseFirestore.instance
        .collection('HERBAL_TEAS')
        .snapshots()
        .listen((value) {
      for (var element in value.docs) {
        modelHERBALTEAS.add(ProductModel.fromJson(element.data()));
        print(modelHERBALTEAS);
      }
      emit(GetProductSuccess());
    }).onError((onError) {
      print(onError);
      emit(GetProductError());
    });
  }


  List<ProductModel> modelSeeds = [];
  Future<void> getSeedsData() async {
    emit(GetProductLoading());
    FirebaseFirestore.instance
        .collection('Seeds')
        .snapshots()
        .listen((value) {
      for (var element in value.docs) {
        modelSeeds.add(ProductModel.fromJson(element.data()));
        print(modelSeeds);
      }
      emit(GetProductSuccess());
    }).onError((onError) {
      print(onError);
      emit(GetProductError());
    });
  }

  List<ProductModel> modelSpices= [];
  Future<void> getSpicesData() async {
    emit(GetProductLoading());
    FirebaseFirestore.instance
        .collection('spices')
        .snapshots()
        .listen((value) {
      for (var element in value.docs) {
        modelSpices.add(ProductModel.fromJson(element.data()));
        print(modelSpices);
      }
      emit(GetProductSuccess());
    }).onError((onError) {
      print(onError);
      emit(GetProductError());
    });
  }

  List<ProductModel> modelFooder= [];
  Future<void> getFooderData() async {
    emit(GetProductLoading());
    FirebaseFirestore.instance
        .collection('fooder')
        .snapshots()
        .listen((value) {
      for (var element in value.docs) {
        modelFooder.add(ProductModel.fromJson(element.data()));
        print('$modelFooder modelFooder');
      }
      emit(GetProductSuccess());
    }).onError((onError) {
      print(onError);
      emit(GetProductError());
    });
  }
}
