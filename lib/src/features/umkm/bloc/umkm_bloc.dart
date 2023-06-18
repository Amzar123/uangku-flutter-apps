import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../model/investor.dart';

part 'umkm_event.dart';
part 'umkm_state.dart';

class UmkmBloc extends Bloc<UmkmEvent, UmkmState> {
  UmkmBloc() : super(UmkmInitial()) {
    on<UmkmLoad>(_onLoadInvestor);
  }

  void _onLoadInvestor(UmkmLoad event, Emitter<UmkmState> emit) {
    emit(InvestorDataLoaded(investors: List.from(event.investors)));
  }
}
