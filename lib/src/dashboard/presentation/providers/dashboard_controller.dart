import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/core/common/app/providers/tab_provider.dart';
import 'package:project_1/core/common/feature/product/presentation/cubit/get_products_cubit.dart';
import 'package:project_1/core/common/views/persistent_view.dart';
import 'package:project_1/core/services/injection_container.dart';
import 'package:project_1/src/home/presentation/views/home_view.dart';
import 'package:provider/provider.dart';

class DashboardController extends ChangeNotifier{

  int _currentIndex = 2;
  final List<int> _indexHistory = [0];

  List<Widget> screens = [
    ChangeNotifierProvider(
      create: (_)=> TabNavigator(
        TabItem(child: BlocProvider<GetProductsCubit>(
          create: (context) => sl<GetProductsCubit>(),
          child: const Placeholder(),
        ),),
      ),
      child: const PersistentView(),
    ),    ChangeNotifierProvider(
      create: (_)=> TabNavigator(
        TabItem(child: BlocProvider<GetProductsCubit>(
          create: (context) => sl<GetProductsCubit>(),
          child: const Placeholder(),
        ),),
      ),
      child: const PersistentView(),
    ),
  ChangeNotifierProvider(
    create: (_)=> TabNavigator(
      TabItem(child: BlocProvider<GetProductsCubit>(
        create: (context) => sl<GetProductsCubit>(),
        child: const HomeView(),
      ),),
    ),
    child: const PersistentView(),
  ),
  ];


  void changeIndex(int newIndex){
    if(newIndex != _currentIndex) {
      _currentIndex = newIndex;
      _indexHistory.add(newIndex);
      notifyListeners();
    }
  }

  int get currentIndex => _currentIndex;


  void goBack(){
    if(_indexHistory.length == 1) return;
    _indexHistory.removeLast();
    _currentIndex = _indexHistory.last;
    notifyListeners();
  }

}