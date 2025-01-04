abstract class AddNotState {}

class AddNotinitial extends AddNotState {}

class AddNotLoaded extends AddNotState {}

class AddNotSuccess extends AddNotState {}

class AddNotFailure extends AddNotState {
  AddNotFailure(this.errorMessage);
  final String errorMessage;
}
