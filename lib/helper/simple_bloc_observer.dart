import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    print('change >>>>>>>>>>  $change');
  }

  @override
  void onClose(BlocBase bloc) {
    print('closed   <>>>>.>>>.   $bloc ');
  }

  @override
  void onCreate(BlocBase bloc) {
    print('create    <>>>>.>>>.   $bloc ');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
