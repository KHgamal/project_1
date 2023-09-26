import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/src/authentication/presentation/bloc/sign_up/sign_up_cubit.dart';
import 'package:project_1/src/authentication/presentation/views/add_documents_screen.dart';
import 'package:project_1/src/authentication/presentation/views/login_view.dart';
import 'package:project_1/src/authentication/presentation/views/sign_up.dart';
import 'package:project_1/src/dashboard/presentation/views/dashboard_screen.dart';
import 'package:project_1/src/home/presentation/views/product_details_view.dart';
import 'package:project_1/src/splash/presentation/views/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../src/authentication/presentation/views/document_verification_done.dart';
import '../../src/authentication/presentation/views/document_verification_loading.dart';
import 'injection_container.dart';

part 'router.main.dart';