part of 'contact_informatio_cubit.dart';

@immutable
abstract class ContactInformatioState {}

class ContactInformatioInitial extends ContactInformatioState {}

class ContactInformatioLoading extends ContactInformatioState {

  
}

class ContactInformatioSuccess extends ContactInformatioState {


}

class ContactInformatioFailure extends ContactInformatioState {}
