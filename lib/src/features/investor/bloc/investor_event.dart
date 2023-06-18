part of 'investor_bloc.dart';

@immutable
abstract class InvestorEvent extends Equatable {
  const InvestorEvent();

  @override
  List<Object> get props => [];
}

class InvestorLoad extends InvestorEvent {
  final List<Umkm> umkms;

  const InvestorLoad({
    this.umkms = const <Umkm>[],
  });

  @override
  List<Object> get props => [umkms];
}
