part of 'umkm_bloc.dart';

@immutable
abstract class UmkmEvent extends Equatable {
  const UmkmEvent();

  @override
  List<Object> get props => [];
}

class UmkmLoad extends UmkmEvent {
  final List<Investor> investors;

  const UmkmLoad({
    this.investors = const <Investor>[],
  });

  @override
  List<Object> get props => [investors];
}
