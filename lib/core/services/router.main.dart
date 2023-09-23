part of 'router.dart';

Route<dynamic> generateFunction(RouteSettings settings){

  switch(settings.name){

    case '/':
      return _pageBuilder((_) => DashBoardScreen(),
        settings: settings,);

    default:
      return _pageBuilder((_) => const Scaffold(
        body: Placeholder(),
      ),
        settings: settings,);

  }
}


PageRouteBuilder<dynamic> _pageBuilder(Widget Function(BuildContext) page,
    {required RouteSettings settings,}){
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_,animation,__,child)=> FadeTransition(opacity: animation,
      child: child,)
    ,pageBuilder: (context,_,__)=> page(context),);
}