import 'package:equatable/equatable.dart';

class Umkm extends Equatable {
  final String userId;
  final int modal;

  const Umkm({required this.userId, required this.modal});

  @override
  List<Object?> get props => [userId, modal];
}
