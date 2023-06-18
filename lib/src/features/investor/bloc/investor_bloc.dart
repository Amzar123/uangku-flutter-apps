import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../model/umkm.dart';

part 'investor_event.dart';
part 'investor_state.dart';

class InvestorBloc extends Bloc<InvestorEvent, InvestorState> {
  InvestorBloc() : super(InvestorInitial()) {
    on<InvestorLoad>(_onLoadUmkm);
  }

  void _onLoadUmkm(InvestorLoad event, Emitter<InvestorState> emit) {
    emit(UmkmDataLoaded(umkm: List.from(event.umkms)));
  }
}
