part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class ChangeBottomNav extends HomeState {}

class GetProductLoading extends HomeState {}
class GetProductSuccess extends HomeState {}
class GetProductError extends HomeState {}
