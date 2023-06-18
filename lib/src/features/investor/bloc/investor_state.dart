part of 'investor_bloc.dart';

@immutable
abstract class InvestorState extends Equatable {
  const InvestorState();

  @override
  List<Object> get props => [];
}

class InvestorInitial extends InvestorState {}

class UmkmDataLoaded extends InvestorState {
  final List<Umkm> umkm;

  const UmkmDataLoaded({this.umkm = const <Umkm>[]});

  @override
  List<Object> get props => [umkm];
}
