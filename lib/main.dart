import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store_bloc/controller/bloc/home_bloc/home_bloc.dart';
import 'package:shoe_store_bloc/controller/bloc/home_bloc/home_states.dart';
import 'package:shoe_store_bloc/start_point.dart';
import 'package:shoe_store_bloc/ui/auth/login.dart';
import 'package:shoe_store_bloc/ui/product/details.dart';

import 'controller/bloc/home_bloc/home_events.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocProvider(
          create: (BuildContext context) => HomeBloc(),
          child: const Home(),
        ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).add(const HomeLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if(state is HomePageState){
            return const StartPoint();
          }
          if(state is AuthState){
            return const LoginScreen();
          }
          else {
            return Scaffold(
                body: Container());
          }
        }
    );
  }
}

