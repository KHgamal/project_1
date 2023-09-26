part of 'router.dart';

Route<dynamic> generateFunction(RouteSettings settings){

  switch(settings.name){

    case '/':
      return _pageBuilder((_) {

        // user is authenticated
        if(sl<SharedPreferences>().containsKey('email')
        && sl<SharedPreferences>().containsKey('password')){
          return const SplashScreen(animateBottom: false,);

        }
        return const SplashScreen(animateBottom: true,);


      },
        settings: settings,);

    case '/login':
      return _pageBuilder((_) =>
      const LoginView(),
        settings: settings,);

    case '/signup':
      return _pageBuilder((_) =>
      BlocProvider(
  create: (_)=> SignUpCubit()
  ,child:  SignUpScreen()),
        settings: settings,);

    case '/DocumentVerificationDone':
      return _pageBuilder((_) =>
      const DocumentVerificationDone(),
        settings: settings,);

    case '/DocumentVerificationLoading':
      return _pageBuilder((_) =>
      const DocumentVerificationLoading(),
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