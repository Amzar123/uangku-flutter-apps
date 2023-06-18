part of 'umkm_bloc.dart';

@immutable
abstract class UmkmState extends Equatable {
  const UmkmState();

  @override
  List<Object> get props => [];
}

class UmkmInitial extends UmkmState {}

class InvestorDataLoaded extends UmkmState {
  final List<Investor> investors;

  const InvestorDataLoaded({this.investors = const <Investor>[]});

  @override
  List<Object> get props => [investors];
}
