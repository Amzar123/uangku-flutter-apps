import 'package:equatable/equatable.dart';

class Investor extends Equatable {
  final String userId;
  final int modal;

  const Investor({required this.userId, required this.modal});

  @override
  List<Object?> get props => [userId, modal];
}
