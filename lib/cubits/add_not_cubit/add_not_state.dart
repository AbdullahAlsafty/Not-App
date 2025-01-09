abstract class AddNotState {}

class AddNotinitial extends AddNotState {
  AddNotinitial() {
    print('//////////////////// Initial  stat ////////////');
  }
}

class AddNotLoaded extends AddNotState {
  AddNotLoaded() {
    print('//////////////////// loaded stat ////////////');
  }
}

class AddNotSuccess extends AddNotState {}

class AddNotFailure extends AddNotState {
  AddNotFailure(this.errorMessage);
  final String errorMessage;
}
