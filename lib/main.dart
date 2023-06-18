import 'dart:convert';
import 'package:apps/src/features/umkm/bloc/umkm_bloc.dart';
import 'package:apps/src/features/umkm/screens/home_umkm.dart';
import 'package:apps/src/features/umkm/screens/list_investor.dart';
import 'package:apps/src/temp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main (){
    runApp(const MyApp());
)
class UMKMModel{
  String userId;
